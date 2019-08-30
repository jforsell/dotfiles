#!/bin/bash

# Reset global default first
defaults delete -g ApplePressAndHoldEnabled

# Support Vim mode in Jetbrains apps
defaults write com.jetbrains.intellij.ce ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.pycharm ApplePressAndHoldEnabled -bool false
