#!/bin/bash
# Category: Wallpaper Management
# set-wallpaper.sh - Set corporate desktop wallpaper
WALLPAPER_PATH="/Library/Desktop Pictures/corp-wallpaper.jpg"
osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"$WALLPAPER_PATH\""
echo "Corporate wallpaper set"
exit 0
