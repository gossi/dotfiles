# See Tutorial
# https://getgrav.org/blog/macos-sonoma-apache-multiple-php-versions

# Start Apache on every boot
sudo defaults write /System/Library/LaunchDaemons/org.apache.httpd Disabled -bool false
