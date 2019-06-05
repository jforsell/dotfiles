#!/bin/bash

# Install rbenv
if brew ls --versions rbenv > /dev/null; then
  echo "rbenv already installed"
else
  brew install rbenv
fi

# Install a Ruby (this version is used by a particular project I work on)
if rbenv versions | grep -q "2.4.2" > /dev/null; then
  echo "Ruby 2.4.2 already installed"
else
  rbenv install 2.4.2
fi

echo "Setting global Ruby version to 2.4.2"
rbenv global 2.4.2
