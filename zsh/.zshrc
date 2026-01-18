eval "$(starship init zsh)"
eval "$(sheldon source)"

# ---- FZF -----

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# bind alt-c on a mac
bindkey "ç" fzf-cd-widget

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo \$'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "bat -n --color=always --line-range :500 {}" "$@" ;;
  esac
}


# --- Zoxide (better cd) ---
eval "$(zoxide init zsh)"

# --- DFT ---
eval "$(dft init)"

# --- More Configs ---
source ~/.config/zsh/alias.sh

source ~/.config/zsh/completion.zsh

if [[ -f  ~/.zshrc.private ]]; then
  source ~/.zshrc.private
fi

source ~/.config/zsh/auto-tmux.zsh
