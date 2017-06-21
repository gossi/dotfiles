#!/bin/bash

if test ! $(which brew)
then
	echo " Install homebrew: "
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
