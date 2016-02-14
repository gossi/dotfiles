#!/bin/bash
mkdir /tmp/curl-ca-bundle
cd /tmp/curl-ca-bundle
wget http://curl.haxx.se/download/curl-7.46.0.tar.gz
tar xzf curl-7.46.0.tar.gz
cd curl-7.46.0/lib/
./mk-ca-bundle.pl
if [ ! -d /usr/local/share/curl/ ]; then
	sudo mkdir -p /usr/local/share/curl/
else
	sudo mv /usr/local/share/curl/curl-ca-bundle.crt /usr/local/share/curl/curl-ca-bundle.crt.original
fi
sudo mv ca-bundle.crt /usr/local/share/curl/curl-ca-bundle.crt
echo
