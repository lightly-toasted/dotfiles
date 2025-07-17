#!/bin/bash
STATE_FILE="$HOME/.cache/mouse-action"

if [ ! -f "$STATE_FILE" ]; then
    exit 0
fi

systemd-run --user $HOME/dotfiles/scripts/actions/$(cat "$STATE_FILE").sh
