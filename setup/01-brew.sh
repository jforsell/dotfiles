#!/bin/bash

# Install brew
if which brew > /dev/null; then
  echo "brew already installed"
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
