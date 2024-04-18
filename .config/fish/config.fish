source ~/.config/fish/paths.fish

if test -f ~/.config/fish/.private-config.fish
    source ~/.config/fish/.private-config.fish
end

set -U fish_greeting ""

# colors
set -g fish_color_autosuggestion 555 brblack
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape bryellow --bold
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match bryellow '--background=brblack'
set -g fish_color_selection white --bold '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

# starship
starship init fish | source

# zoxide
zoxide init fish | source

# volta

# pnpm
set -gx PNPM_HOME "$HOME/Library/pnpm/"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

source ~/.config/fish/alias.fish
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
