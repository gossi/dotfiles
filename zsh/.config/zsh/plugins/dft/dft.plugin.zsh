# config
export DFT_HOME="${DFT_HOME:=$HOME/.config/dft}"
export DFTFILE="${DFTFILE:=$DFT_HOME/dftfile}"

## Utils

__dft_source() {
    local topic=$1
    local script=$2

    local shellScript=${DFT_HOME}/${topic}/${script}.sh

    if [[ -f $shellScript ]]; then
        source $shellScript
    fi

    local zshScript=${DFT_HOME}/${topic}/${script}.zsh

    if [[ -f $zshScript ]]; then
        source $zshScript
    fi
}

__dft_persist_topic() {
    local topic=$1

    if ! grep -q -F "$topic" "$DFTFILE"; then
        echo $topic >>$DFTFILE
    fi
}

## Comands

# install DFTFILE topic(s)
__dft_install() {
    if [ $# -gt 0 ]; then
        __dft_install_topic $1
    else
        __dft_install_all
    fi

    __dft_reload
}

__dft_install_topic() {
    local topic=$1

    # does the topic exit?
    if [[ -d $DFT_HOME/$topic ]]; then

        # is there an installer, if so run it
        __dft_source $topic "install"

        # persisting the topic
        __dft_persist_topic $topic
    else
        echo "Topic '$topic' does not exist"
    fi
}

__dft_install_all() {
    if  [[ -f $DFTFILE ]]; then
        local topics=($(/bin/cat $DFTFILE))

        for topic in $topics; do
            __dft_install_topic $topic
        done
    fi
}

__dft_ls() {
    if [[ -f $DFTFILE ]]; then
        /bin/cat $DFTFILE
    fi
}

__dft_reload() {
    if [[ -f "$HOME/.zshrc" ]]; then
        source $HOME/.zshrc
    elif [[ -f "$HOME/.config/zsh/zshrc" ]]; then
        source $HOME/.config/zsh/zshrc
    fi
}

__dft_uninstall_topic() {
    local topic=$1

    # run uninstaller
    __dft_source $topic "uninstall"

    # remove from dftfile
    local topics=($(/bin/cat $DFTFILE))

    # erase file
    true >$DFTFILE

    for t in $topics; do
        if [ $t != $topic ]; then
            __dft_persist_topic $t
        fi
    done

    __dft_reload
}

__dft_update() {
    if [[ -f $DFTFILE ]]; then
        local topics=($(/bin/cat $DFTFILE))

        for topic in $topics; do
            __dft_source $topic "update"
        done
    fi
}


__dft_help() {
    echo "Usage: $ProgName <subcommand> [options]\n"
    echo "Subcommands:"
    echo "    bar   Do bar"
    echo "    baz   Run baz"
    echo ""
    echo "For help with each subcommand run:"
    echo "$ProgName <subcommand> -h|--help"
    echo ""
}

dft() {
    subcommand=$1

    case $subcommand in
        "" | "-h" | "--help")
            __dft_help
            ;;
        *)
            shift
            __dft_${subcommand} $@
            if [ $? = 127 ]; then
                echo "Error: '$subcommand' is not a known subcommand." >&2
                echo "       Run 'dft --help' for a list of known subcommands." >&2
                exit 1
            fi
            ;;
    esac
}


## Init

# load topic config files
if  [[ -f $DFTFILE ]]; then
    local topics=($(/bin/cat $DFTFILE))

    for topic in $topics; do
        __dft_source $topic "config"
    done
fi