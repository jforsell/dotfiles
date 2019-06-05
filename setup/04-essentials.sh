#!/bin/bash

echo "Take ownership of /usr/local to fix brew permission issues -- see https://stackoverflow.com/a/14539521"
sudo chown -R $(whoami) $(brew --prefix)/*

# Install wget
if brew ls --versions wget > /dev/null; then
  echo "wget already installed"
else
  brew install wget
fi

# Install md5sum
if brew ls --versions md5sha1sum > /dev/null; then
  echo "md5sha1sum already installed"
else
  brew install md5sha1sum
fi
