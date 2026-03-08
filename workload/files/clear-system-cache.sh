#!/bin/bash
# Category: Maintenance
# clear-system-cache.sh - Clear system and user caches
rm -rf ~/Library/Caches/*
rm -rf /Library/Caches/*
echo "System and user caches cleared"
exit 0
