#!/bin/bash

# install php
brew install php@71 --with-httpd24
#brew install php71-intl
#brew install php71-xdebug
#brew install php71-opcache
#brew install php71-apcu
#brew install php71-yaml

# composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
composer self-update

# tools
composer global require phpunit/phpunit
composer global require friendsofphp/php-cs-fixer

# update composer dependencies
composer global update


## references
# Series:
# 1: https://getgrav.org/blog/macos-sierra-apache-multiple-php-versions
# 2: https://getgrav.org/blog/macos-sierra-apache-mysql-vhost-apc
#
# https://echo.co/blog/os-x-109-local-development-environment-apache-php-and-mysql-homebrew
