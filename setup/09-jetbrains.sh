#!/bin/bash

# Install JetBrains Toolbox
if brew cask ls --versions jetbrains-toolbox > /dev/null; then
  echo "JetBrains Toolbox already installed"
else
  brew cask install jetbrains-toolbox
fi
