#!/bin/bash
# Category: Inventory
# collect-hardware-info.sh - Collect hardware info
SERIAL=$(system_profiler SPHardwareDataType | awk '/Serial Number/{print $4}')
MODEL=$(system_profiler SPHardwareDataType | awk '/Model Name/{print $3,$4,$5}')
RAM=$(system_profiler SPHardwareDataType | awk '/Memory/{print $2,$3}')
echo "Serial: $SERIAL | Model: $MODEL | RAM: $RAM"
exit 0
