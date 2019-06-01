#!/bin/sh

# Change user's default shell to zsh
chsh -s /bin/zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i '' "s/^plugins=(git)$/plugins=(git zsh-autosuggestions)/" ~/.zshrc

# Symlink zsh dotfiles
SCRIPTPATH=$(cd "$(dirname "$0")"; pwd)
ln -s $SCRIPTPATH/../dotfiles/dot.zshenv ~/.zshenv
ln -s $SCRIPTPATH/../dotfiles/dot.zlogin ~/.zlogin
ln -s $SCRIPTPATH/../dotfiles/dot.zprofile ~/.zprofile
