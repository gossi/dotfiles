#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install stow

stow bat
stow dft
stow ghostty
stow git
stow karabiner
stow nvim
stow proto
stow sheldon
stow ssh
stow starship
stow tmux
stow zsh

dft install

