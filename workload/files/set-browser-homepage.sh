#!/bin/bash
# Category: Browser Configuration
# set-browser-homepage.sh - Set default browser homepage
HOMEPAGE="https://intranet.corp.example.com"
defaults write com.google.Chrome HomepageLocation -string "$HOMEPAGE"
defaults write com.google.Chrome NewTabPageLocation -string "$HOMEPAGE"
echo "Browser homepage set to $HOMEPAGE"
exit 0
