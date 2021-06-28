#!/bin/bash

# Install obsidian for taking notes
if brew ls --versions --cask obsidian > /dev/null; then
  echo "obsidian already installed"
else
  brew install --cask obsidian
fi

