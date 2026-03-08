#!/bin/bash
# Category: Printer Management
# add-network-printer.sh - Add a network printer
PRINTER_NAME="Office-Printer-01"
PRINTER_URI="lpd://192.168.1.100"
DRIVER="/Library/Printers/PPDs/Contents/Resources/HP LaserJet.ppd.gz"
lpadmin -p "$PRINTER_NAME" -E -v "$PRINTER_URI" -P "$DRIVER"
echo "Printer added: $PRINTER_NAME"
exit 0
