#!/bin/bash
# Category: Compliance Reporting
# run-compliance-check.sh - Run compliance check and report
HOSTNAME=$(hostname)
FILEVAULT=$(fdesetup status | awk '{print $3}')
FIREWALL=$(defaults read /Library/Preferences/com.apple.alf globalstate)
echo "Host: $HOSTNAME | FileVault: $FILEVAULT | Firewall State: $FIREWALL"
logger -t ComplianceCheck "Host: $HOSTNAME FileVault: $FILEVAULT Firewall: $FIREWALL"
exit 0
