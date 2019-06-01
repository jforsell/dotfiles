#!/bin/sh

# Install Vim
brew install vim

# Symlink .vimrc
SCRIPTPATH=$(cd "$(dirname "$0")"; pwd)
ln -s $SCRIPTPATH/../dotfiles/dot.vimrc ~/.vimrc

