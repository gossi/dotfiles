brew install rbenv
rbenv init
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
fisher add rbenv/fish-rbenv

set -U fish_user_paths ~/.rbenv/shims ~/.rbenv/bin $fish_user_paths
