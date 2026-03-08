#!/bin/bash
# Category: Application Control
# block-unauthorised-apps.sh - Block unauthorised applications
BLOCKED_APPS=("BitTorrent" "uTorrent" "Steam")
for APP in "${BLOCKED_APPS[@]}"; do
    if [ -d "/Applications/$APP.app" ]; then
        rm -rf "/Applications/$APP.app"
        echo "Removed: $APP"
    fi
done
exit 0
