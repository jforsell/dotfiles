#!/bin/sh

# Change user's default shell to zsh
chsh -s /bin/zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Symlink zsh dotfiles
SCRIPTPATH=$(cd "$(dirname "$0")"; pwd)
ln -s $SCRIPTPATH/../dotfiles/dot.zshenv ~/.zshenv
ln -s $SCRIPTPATH/../dotfiles/dot.zlogin ~/.zlogin
