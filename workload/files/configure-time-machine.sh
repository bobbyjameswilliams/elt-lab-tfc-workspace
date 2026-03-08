#!/bin/bash
# Category: Backup Configuration
# configure-time-machine.sh - Configure Time Machine
BACKUP_DEST="/Volumes/CorpBackup"
tmutil setdestination "$BACKUP_DEST"
tmutil enable
echo "Time Machine configured to: $BACKUP_DEST"
exit 0
