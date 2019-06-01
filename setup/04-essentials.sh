#!/bin/sh

echo "Take ownership of /usr/local to fix brew permission issues -- see https://stackoverflow.com/a/14539521"
sudo chown -R $(whoami) $(brew --prefix)/*

# Install wget
brew install wget

# Install md5sum
brew install md5sha1sum
