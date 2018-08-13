#!/bin/bash

# Ask for the administrator password upfront
#sudo -v

# Keep-alive: update existing `sudo` time stamp until `bash` has finished
#while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install pygments for 'c'
sudo easy_install Pygments

# if easy_install doesn't work
# go here: http://stackoverflow.com/a/12574436/483492
