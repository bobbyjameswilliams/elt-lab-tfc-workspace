#!/bin/bash
# Category: Onboarding
# setup-new-user.sh - New user onboarding setup
defaults write com.apple.dock tilesize -int 48
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
killall Dock
killall Finder
echo "New user onboarding configuration applied"
exit 0
