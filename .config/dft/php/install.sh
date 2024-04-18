# install php
pecl install xdebug

# composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
composer self-update

# tools
composer global require phpunit/phpunit
composer global require friendsofphp/php-cs-fixer

# parallel downloads
composer global require hirak/prestissimo

## references
# Series:
# 1: https://getgrav.org/blog/macos-sierra-apache-multiple-php-versions
# 2: https://getgrav.org/blog/macos-sierra-apache-mysql-vhost-apc
#
# https://echo.co/blog/os-x-109-local-development-environment-apache-php-and-mysql-homebrew