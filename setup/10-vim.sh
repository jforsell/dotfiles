#!/bin/bash

# Install Vim
if brew ls --versions vim > /dev/null; then
  echo "Vim already installed"
else
  brew install vim
fi

# Symlink .vimrc
SCRIPTPATH=$(cd "$(dirname "$0")"; pwd)
ln -sf $SCRIPTPATH/../dotfiles/dot.vimrc ~/.vimrc

