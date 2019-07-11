#!/bin/bash

# Install pyenv
if brew ls --versions pyenv > /dev/null; then
  echo "pyenv already installed"
else
  brew install pyenv
fi

# Install Python 2.7
PYTHON_2_7=2.7.16
if pyenv versions | grep -q $PYTHON_2_7 > /dev/null; then
  echo "Python $PYTHON_2_7 already installed"
else
  pyenv install $PYTHON_2_7
fi


# Install Python 3.6
PYTHON_3_6=3.6.9
if pyenv versions | grep -q $PYTHON_3_6 > /dev/null; then
  echo "Python $PYTHON_3_6 already installed"
else
  pyenv install $PYTHON_3_6
fi

# Install Python 3.7
PYTHON_3_7=3.7.4
if pyenv versions | grep -q $PYTHON_3_7 > /dev/null; then
  echo "Python $PYTHON_3_7 already installed"
else
  pyenv install $PYTHON_3_7
fi


echo "Setting global Python version to 2.7"
pyenv global $PYTHON_2_7
