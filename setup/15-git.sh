#!/bin/bash

# Install git number plugin
if brew ls --versions git-number > /dev/null; then
  echo "git-number already installed"
else
  brew install git-number
fi

