#!/bin/bash
# Category: System Configuration
# set-timezone.sh - Set system timezone
TIMEZONE="Europe/London"
systemsetup -settimezone "$TIMEZONE"
echo "Timezone set to $TIMEZONE"
exit 0
