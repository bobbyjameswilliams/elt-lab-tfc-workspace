#!/bin/bash
# Category: OS Updates
# trigger-os-update.sh - Trigger macOS software update
softwareupdate --install --all --restart
echo "macOS update triggered"
exit 0
