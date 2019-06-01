#!/bin/sh

if [ -d "~/miniconda" ]; then
  # Get Miniconda script
  wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/miniconda.sh

  # Run the Miniconda script and install to ~/miniconda
  bash ~/miniconda.sh -b -p ~/miniconda

  # Remove Miniconda script
  rm ~/miniconda.sh
fi

# Create Python 2 environment
conda create -n python2 python=2.7

# Create Python 3 environment
conda create -n python3 python=3.7
