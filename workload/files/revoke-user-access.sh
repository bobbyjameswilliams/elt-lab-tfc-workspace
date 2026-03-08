#!/bin/bash
# Category: Offboarding
# revoke-user-access.sh - Revoke departing user access
TARGET_USER="$4"
dscl . -delete /Users/$TARGET_USER
rm -rf /Users/$TARGET_USER
echo "User $TARGET_USER removed from system"
exit 0
