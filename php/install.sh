#!/bin/bash

# tap repos
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/php

# install php5.4
brew install php54
brew install php54-intl

# composer
brew install composer
composer self-update
