#!/bin/bash

# tap repos
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/php

# install php5.4
brew install php55
brew install php55-intl
brew install php55-xdebug

# composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
composer self-update

# tools
composer global require 'phpunit/phpunit=~4'
composer global require fabpot/php-cs-fixer @stable

# update composer dependencies
composer global update
