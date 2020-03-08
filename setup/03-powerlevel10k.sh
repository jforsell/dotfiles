#!/bin/bash

# Install Powerlevel10k theme (compatible with Powerlevel9k but much faster)
git -C ~/.oh-my-zsh/custom/themes/powerlevel10k pull || git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

# Select theme in .zshrc
sed -i '' "s/^ZSH_THEME=.*$/ZSH_THEME=powerlevel10k\/powerlevel10k/" ~/.zshrc

# Source Powerlevel10k config file
grep -qF "# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh." ~/.zshrc
if [ $? -ne 0 ]; then
  echo "# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh." >> ~/.zshrc
  echo "[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh" >> ~/.zshrc
fi

# Install Nerd-Fonts
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

echo "Note: Change font and color preset to 'Hack Regular Nerd Font Complete' and Pastel (Dark Background) respectively."
