#!/bin/bash

# Change user's default shell to zsh (unnecessary in MacOS Catalina?)
chsh -s /bin/zsh

if [ ! -d "~/.oh-my-zsh" ]; then
  # Install Oh My Zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install zsh autosuggestions plugin
git -C ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions pull || git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Add ssh-agent and zsh-autosuggestions plugins to .zshrc
sed -i '' "s/^plugins=(git)$/plugins=(git ssh-agent zsh-autosuggestions)/" ~/.zshrc

# Symlink zsh dotfiles
SCRIPTPATH=$(cd "$(dirname "$0")"; pwd)
ln -sf $SCRIPTPATH/../dotfiles/dot.zshenv ~/.zshenv
ln -sf $SCRIPTPATH/../dotfiles/dot.zlogin ~/.zlogin
ln -sf $SCRIPTPATH/../dotfiles/dot.zprofile ~/.zprofile
