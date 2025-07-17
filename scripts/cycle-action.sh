#!/bin/bash
STATE_FILE="$HOME/.cache/mouse-action"

if [ -f "$STATE_FILE" ]; then
    CURRENT_ACTION=$(cat "$STATE_FILE")
else
    CURRENT_ACTION="deafen"
fi

case "$CURRENT_ACTION" in
    "deafen") NEW_ACTION="sober-lag" ;;
    *) NEW_ACTION="deafen"
esac

echo "$CURRENT_ACTION -> $NEW_ACTION"

echo "$NEW_ACTION" > "$STATE_FILE.tmp"
mv "$STATE_FILE.tmp" "$STATE_FILE"
