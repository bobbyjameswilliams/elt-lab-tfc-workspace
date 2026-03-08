#!/bin/bash
# Category: Energy Management
# set-power-policy.sh - Apply power management settings
pmset -a displaysleep 10
pmset -a sleep 30
pmset -a disksleep 10
pmset -a womp 1
echo "Power policy applied"
exit 0
