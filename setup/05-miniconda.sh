#!/bin/bash

if [ -d ~/miniconda/ ]; then
  echo "Miniconda already installed"
else
  # Get Miniconda script
  wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/miniconda.sh

  # Run the Miniconda script and install to ~/miniconda
  bash ~/miniconda.sh -b -p ~/miniconda

  # Remove Miniconda script
  rm ~/miniconda.sh
fi

# Create Python 2 environment
if conda env list | grep -q "python2" > /dev/null; then
  echo "Conda python2 environment already exists"
else
  conda create -n python2 python=2.7
fi

# Create Python 3.6 environment
if conda env list | grep -q "python36" > /dev/null; then
  echo "Conda python36 environment already exists"
else
  conda create -n python36 python=3.6
fi

# Create Python 3.7 environment
if conda env list | grep -q "python37" > /dev/null; then
  echo "Conda python37 environment already exists"
else
  conda create -n python37 python=3.7
fi
