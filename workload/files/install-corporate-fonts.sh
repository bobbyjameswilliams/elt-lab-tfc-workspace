#!/bin/bash
# Category: Font Management
# install-corporate-fonts.sh - Install corporate fonts
FONT_SOURCE="/Library/Application Support/CorpFonts/"
FONT_DEST="/Library/Fonts/"
cp -R "$FONT_SOURCE"* "$FONT_DEST"
atsutil databases -removeUser
echo "Corporate fonts installed"
exit 0
