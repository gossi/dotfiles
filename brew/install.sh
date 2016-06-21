#!/bin/bash

if test ! $(which brew)
then
	echo " Install homebrew: "
	ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
	#exit
else
	echo " + Homebrew found."
fi

# install bash auto completion
brew install bash-completion
brew tap homebrew/completions

# install brew-cask
brew tap caskroom/cask

# update + upgrade
brew update
brew upgrade
