#!/usr/bin/with-contenv bash

/app/createvpnconfig.sh

echo "Reconnect to selected VPN server"
s6-svc -h /var/run/s6/services/nordvpnd

exit 0
