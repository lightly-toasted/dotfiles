#!/bin/bash

AUTOCLICK_FILE="/run/user/$(id -u)/autoclick"

if [ ! -f "$AUTOCLICK_FILE" ]; then
    echo "0" > "$AUTOCLICK_FILE"
fi

current=$(cat "$AUTOCLICK_FILE")
if [ "$current" = "0" ]; then
    echo "1" > "$AUTOCLICK_FILE"
    notify-send "Autoclicker" "Stopped"
    exit 0
else
    echo "0" > "$AUTOCLICK_FILE"
    notify-send "Autoclicker" "Started"
fi

while :; do
    line=$(cat "$AUTOCLICK_FILE")
    if [ "$line" = "0" ]; then
        ydotool click --next-delay 25 0xC0 > /dev/null 2>&1
    else
        break
    fi
done
