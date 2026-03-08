#!/bin/bash
# Category: User Management
# create-local-admin.sh - Create local admin account
USERNAME="corp-admin"
PASSWORD="TempP@ss123"
dscl . -create /Users/$USERNAME
dscl . -create /Users/$USERNAME UserShell /bin/zsh
dscl . -create /Users/$USERNAME RealName "Corp Admin"
dscl . -create /Users/$USERNAME UniqueID 505
dscl . -create /Users/$USERNAME PrimaryGroupID 20
dscl . -passwd /Users/$USERNAME "$PASSWORD"
dscl . -append /Groups/admin GroupMembership $USERNAME
echo "Local admin account created: $USERNAME"
exit 0
