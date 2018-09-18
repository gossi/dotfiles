#!/bin/bash

# install
brew install git
brew install hub
brew install diff-so-fancy

git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

