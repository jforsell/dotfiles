#!/bin/bash

# Install apple/swe/nsd
if brew ls --versions nsd > /dev/null; then
  echo "nsd already installed"
else
  brew install apple/swe/nsd
fi

