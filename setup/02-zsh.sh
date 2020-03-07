#!/bin/bash

if [ ! -d "~/.oh-my-zsh" ]; then
  # Install Oh My Zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Install zsh autosuggestions plugin
git -C ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions pull || git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh syntax highlighting plugin
git -C ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting pull || git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
if ! grep -q zsh-syntax-highlighting ~/.zshrc; then
  echo "source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
fi

# Add ssh-agent and zsh-autosuggestions plugins to .zshrc
sed -i '' "s/^plugins=(git)$/plugins=(git ssh-agent zsh-autosuggestions)/" ~/.zshrc


# Symlink zsh dotfiles
SCRIPTPATH=$(cd "$(dirname "$0")"; pwd)
ln -sf $SCRIPTPATH/../dotfiles/dot.zshenv ~/.zshenv
ln -sf $SCRIPTPATH/../dotfiles/dot.zlogin ~/.zlogin
ln -sf $SCRIPTPATH/../dotfiles/dot.zprofile ~/.zprofile
