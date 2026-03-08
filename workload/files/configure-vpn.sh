#!/bin/bash
# Category: Network Settings
# configure-vpn.sh - Configure VPN profile
VPN_NAME="Corp VPN"
VPN_SERVER="vpn.corp.example.com"
/usr/sbin/networksetup -addVPNConnection "$VPN_NAME" "L2TP over IPSec" "$VPN_SERVER" "" ""
echo "VPN profile configured: $VPN_NAME"
exit 0
