#!/bin/bash

# Install Vim
brew install vim

# Symlink .vimrc
SCRIPTPATH=$(cd "$(dirname "$0")"; pwd)
ln -sf $SCRIPTPATH/../dotfiles/dot.vimrc ~/.vimrc

