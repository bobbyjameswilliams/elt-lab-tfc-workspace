#!/bin/bash
# Category: Security Compliance
# enforce-filevault.sh - Enable FileVault encryption
if fdesetup status | grep -q "FileVault is Off"; then
    fdesetup enable -user "$3"
    echo "FileVault enabled for $3"
else
    echo "FileVault already enabled"
fi
exit 0
