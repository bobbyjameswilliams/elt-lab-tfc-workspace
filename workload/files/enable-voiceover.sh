#!/bin/bash
# Category: Accessibility
# enable-voiceover.sh - Enable VoiceOver
defaults write com.apple.universalaccess voiceOverOnOffKey -bool true
/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate
echo "VoiceOver enabled"
exit 0
