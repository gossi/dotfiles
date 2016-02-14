#!/bin/bash

if test ! $(which brew)
then
	echo " Install homebrew: "
	ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
	#exit
else
	echo " + Homebrew found."
fi

# install brew-cask
brew tap caskroom/cask

# update + upgrade
brew update
brew upgrade
