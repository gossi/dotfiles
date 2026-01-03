# Completions for ZSH
#
# @see
# - https://github.com/Phantas0s/.dotfiles/blob/master/zsh/completion.zsh
# - https://thevaluable.dev/zsh-completion-guide-examples/

# Should be called before compinit
#zmodload zsh/complist

autoload -Uz compinit; compinit
_comp_options+=(globdots) # With hidden files

# +---------+
# | Options |
# +---------+

# setopt GLOB_COMPLETE      # Show autocompletion menu with globs
setopt MENU_COMPLETE        # Automatically highlight first element of completion menu
setopt AUTO_LIST            # Automatically list choices on ambiguous completion.
setopt COMPLETE_IN_WORD     # Complete from both ends of a word.

# +---------+
# | zstyles |
# +---------+

# Allow you to select in a menu
zstyle ':completion:*' menu select

# Autocomplete options for cd instead of directory stack
zstyle ':completion:*' complete-options true



# =========
#  Plugins
# =========

# +------------------+
# | zsh-autocomplete |
# +------------------+

# autocomplete has an interesting completion menu, but it is omni-present
# visible and I haven't figured a way to only pop it up when pressing <TAB>

# bindkey              '^I' menu-select
# bindkey "$terminfo[kcbt]" menu-select


#  fzf
# ---------

# fzf completions are very nice, but when using it with  `cd some-<TAB>` and it
# would need to complete to `cd some-dir/` - it has a long delay, as I guess it
# runs fzf in the background, then realizes, there are no other option and then
# completes the line. Given this is my most used way to use the shell, this is
# impractical.
#
# Both `fzf-tab` and `fzf-zsh-completion` have this delay. If that ever is
# solveable, then the latter seems to provide more customization options


# +---------+
# | fzf-tab |
# +---------+

#source ~/.local/share/sheldon/repos/github.com/Aloxaf/fzf-tab/fzf-tab.plugin.zsh

### 

# +--------------------+
# | fzf-zsh-completion |
# +--------------------+


#source ~/.local/share/sheldon/repos/github.com/lincheney/fzf-tab-completion/zsh/fzf-zsh-completion.sh

# # only for git
# zstyle ':completion:*:*:git:*' fzf-search-display true
# # or for everything
# zstyle ':completion:*' fzf-search-display true

# ## keybindings

#  press ctrl-r to repeat completion *without* accepting i.e. reload the completion
# # press right to accept the completion and retrigger it
# # press alt-enter to accept the completion and run it
# keys=(
#     ctrl-r:'repeat-fzf-completion'
#     right:accept:'repeat-fzf-completion'
#     alt-enter:accept:'zle accept-line'
# )

# zstyle ':completion:*' fzf-completion-keybindings "${keys[@]}"
# # also accept and retrigger completion when pressing / when completing cd
# zstyle ':completion::*:cd:*' fzf-completion-keybindings "${keys[@]}" /:accept:'repeat-fzf-completion'

# ## more options

# # basic file preview for ls (you can replace with something more sophisticated than head)
# zstyle ':completion::*:ls::*' fzf-completion-opts --preview='eval head {1}'

# # preview when completing env vars (note: only works for exported variables)
# # eval twice, first to unescape the string, second to expand the $variable
# zstyle ':completion::*:(-command-|-parameter-|-brace-parameter-|export|unset|expand):*' fzf-completion-opts --preview='eval eval echo {1}'

# # preview a `git status` when completing git add
# zstyle ':completion::*:git::git,add,*' fzf-completion-opts --preview='git -c color.status=always status --short'

# # if other subcommand to git is given, show a git diff or git log
# zstyle ':completion::*:git::*,[a-z]*' fzf-completion-opts --preview='
# eval set -- {+1}
# for arg in "$@"; do
#     { git diff --color=always -- "$arg" | git log --color=always "$arg" } 2>/dev/null
# done'