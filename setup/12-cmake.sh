#!/bin/bash

if brew ls --versions cmake > /dev/null; then
  echo "cmake already installed"
else
  brew install cmake
fi
