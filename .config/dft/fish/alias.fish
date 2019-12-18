# listings
alias l 'ls -le'
alias la 'ls -la'

# directory stuff
alias md mkdir

#navigation
alias .. 'cd ..'
alias cd.. 'cd ..'

# beautiful cat
#alias c='pygmentize -O style=monokai -f console256 -g'
alias c 'fish_indent --ansi'
alias cat bat

# IP addresses
alias localip 'ipconfig getifaddr en1'

# File size
alias fs 'stat -f "%z bytes"'

# Ping
alias ping 'prettyping --nolegend'

# Preview
alias preview "fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

# htop
alias top htop

# du improved (ncdu)
alias du 'ncdu --color dark -rr -x --exclude .git'

# tldr/help
alias help tldr