#!/bin/bash

# Install brew
if which brew > /dev/null; then
  echo "brew already installed"
else
  # Install public Brew
  # /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  # Install Homebrew @ Apple, https://github.pie.apple.com/homebrew/brew
  git clone https://github.pie.apple.com/homebrew/brew.git /tmp/homebrew
  # sudo mv /tmp/homebrew /opt/homebrew # Apple Silicon
  sudo mv /tmp/homebrew /opt/brew # Intel

  # Get Apple's brew on the path
  echo "/opt/homebrew/bin" | sudo tee /etc/paths.d/10-brew
  echo "/opt/brew/bin" | sudo tee /etc/paths.d/20-brew
  eval `/usr/libexec/path_helper -s`

fi
