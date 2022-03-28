#!/bin/sh

# Usage ./rfkill-toggle.sh [IDENTIFIER]
# where IDENTIFIER is the index no. of an rfkill switch or one of:
#   wifi wlan bluetooth uwb ultrawideband wimax wwan gps fm nfc

if [ -z $1 ]; then
    echo -n "enter a valid identifier; possible identifier: "
    rfkill list --output type -n | paste -s -d, -
    exit 1
fi

ID=`rfkill list "$1" 2>/dev/null | head -c 1 | cut -f 1`
SOFT="/sys/class/rfkill/rfkill$ID/soft"

if [ ! -f "$SOFT" ]; then
    echo -n "no such identifier; possible identifier: "
    rfkill list --output type -n | paste -s -d, -
    exit 1
fi

ACTION="block"
if [ $(cat "$SOFT") -eq 1 ]; then
    ACTION="unblock"
fi

rfkill "$ACTION" "$ID"
