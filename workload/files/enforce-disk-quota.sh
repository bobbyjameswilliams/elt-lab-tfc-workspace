#!/bin/bash
# Category: Storage Management
# enforce-disk-quota.sh - Enforce disk quota
TARGET_USER="$4"
edquota -u "$TARGET_USER" <<QUOTA
Filesystem blocks soft hard inodes soft hard
/dev/disk1 0 10240000 12288000 0 0 0
QUOTA
echo "Disk quota enforced for $TARGET_USER"
exit 0
