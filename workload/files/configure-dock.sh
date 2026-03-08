#!/bin/bash
# Category: Dock Configuration
# configure-dock.sh - Configure corporate Dock layout
defaults write com.apple.dock tilesize -int 52
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 72
defaults write com.apple.dock orientation -string "bottom"
killall Dock
echo "Dock configuration applied"
exit 0
