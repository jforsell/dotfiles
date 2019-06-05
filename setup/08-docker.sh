#!/bin/bash

# Install Docker
if brew cask ls --versions docker > /dev/null; then
  echo "Docker already installed"
else
  brew cask install docker
fi
