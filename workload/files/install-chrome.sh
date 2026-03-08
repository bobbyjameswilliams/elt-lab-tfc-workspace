#!/bin/bash
# Category: Software Deployment
# install-chrome.sh - Silent install of Google Chrome
DMG_URL="https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
TMP_DMG="/tmp/googlechrome.dmg"
curl -L -o "$TMP_DMG" "$DMG_URL"
hdiutil attach "$TMP_DMG" -nobrowse -quiet
cp -R "/Volumes/Google Chrome/Google Chrome.app" /Applications/
hdiutil detach "/Volumes/Google Chrome" -quiet
rm "$TMP_DMG"
echo "Google Chrome installed"
exit 0
