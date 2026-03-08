#!/bin/bash
# Category: Certificates
# install-root-cert.sh - Install corporate root certificate
CERT_PATH="/Library/Application Support/corp-root.cer"
security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain "$CERT_PATH"
echo "Corporate root certificate installed"
exit 0
