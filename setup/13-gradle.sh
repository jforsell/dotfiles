#!/bin/bash

# Install gradle
if brew ls --versions gradle > /dev/null; then
  echo "gradle already installed"
else
  brew install gradle
fi

