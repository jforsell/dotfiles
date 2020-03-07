#!/bin/bash

# Install iTerm2
if brew cask ls --versions iterm2 > /dev/null; then
  echo "iTerm2 already installed"
else
  brew cask install iterm2
fi

