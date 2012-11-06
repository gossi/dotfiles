#!/bin/bash

if test ! $(which brew)
then
	echo " Install homebrew: "
	ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
	#exit
else
	echo " + Homebrew found."
fi

# update + upgrade
brew update
brew upgrade

# joe editor
brew install joe

#php5.4
brew tap homebrew/dupes
brew tap josegonzalez/homebrew-php
brew install php54

# misc
brew install git
brew install hub

# cleanup
brew cleanup