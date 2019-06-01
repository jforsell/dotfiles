#!/bin/sh

# Install Powerlevel9k
brew tap sambadevi/powerlevel9k
brew install powerlevel9k

# Install Powerlevel9k theme to use with Oh My Zsh
git -C ~/.oh-my-zsh/custom/themes/powerlevel9k pull || git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Install Powerlevel10k theme (compatible with Powerlevel9k but much faster)
git -C ~/.oh-my-zsh/custom/themes/powerlevel10k pull || git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

# Select theme in .zshrc
sed -i '' "s/^ZSH_THEME=.*$/ZSH_THEME=powerlevel10k\/powerlevel10k/" ~/.zshrc

# Install Nerd-Fonts
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# Enable Nerd-Fonts
grep -qxF "POWERLEVEL9K_MODE='nerdfont-complete'" ~/.zshrc || echo "POWERLEVEL9K_MODE='nerdfont-complete'" >> ~/.zshrc

echo "Note: Change font and color preset to 'Hack Regular Nerd Font Complete' and Pastel (Dark Background) respectively."
