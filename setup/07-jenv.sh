#!/bin/bash

# Install jenv
if brew ls --versions jenv > /dev/null; then
  echo "jenv already installed"
else
  brew install jenv
fi

echo "Note: Install Java manually and use jenv to set it as the global version, for example:"
echo " $ jenv global 11.0"

