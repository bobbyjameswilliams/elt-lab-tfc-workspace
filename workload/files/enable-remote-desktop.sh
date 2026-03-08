#!/bin/bash
# Category: Remote Management
# enable-remote-desktop.sh - Enable Apple Remote Desktop
/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart \
  -activate -configure -access -on -restart -agent -privs -all
echo "Remote Desktop enabled"
exit 0
