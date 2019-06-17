#!/bin/bash

# Support Vim mode in Jetbrains apps
defaults write com.jetbrains.intellij.ce ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.pycharm ApplePressAndHoldEnabled -bool false
