# brew

set arch (/usr/bin/uname -m)

# Arm macOS
if test "$arch" = "arm64"
  eval "$(/opt/homebrew/bin/brew shellenv)"

## Intel macOS
else
  eval "$(/usr/local/bin/brew shellenv)"

end

# yarn
#pathadd (yarn global bin | grep -o '/.*')
