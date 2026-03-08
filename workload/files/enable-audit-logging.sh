#!/bin/bash
# Category: Logging & Monitoring
# enable-audit-logging.sh - Enable audit logging
launchctl load -w /System/Library/LaunchDaemons/com.apple.auditd.plist
audit -s
echo "Audit logging enabled"
exit 0
