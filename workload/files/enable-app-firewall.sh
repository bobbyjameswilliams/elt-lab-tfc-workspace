#!/bin/bash
# Category: Firewall Management
# enable-app-firewall.sh - Enable application firewall
defaults write /Library/Preferences/com.apple.alf globalstate -int 1
launchctl load -w /System/Library/LaunchAgents/com.apple.alf.useragent.plist
echo "Application firewall enabled"
exit 0
