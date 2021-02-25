#!/bin/bash

# Install rectangle for window management
if brew ls --versions rectangle > /dev/null; then
  echo "rectangle already installed"
else
  brew install --cask rectangle
fi

