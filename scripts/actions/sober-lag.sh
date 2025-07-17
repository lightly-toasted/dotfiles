#!/bin/bash

roblox_pid=$(ps aux | grep "[s]ober --" | sort -k3 -nr | head -n 1 | awk '{print $2}')
if [ -z "$roblox_pid" ]; then
  echo "sober not running"
  notify-send "sober-lag.sh" "Sober is not running."
  exit 1
fi
echo "pid: $roblox_pid"

pgid=$(ps -o pgid= -p "$roblox_pid" | xargs)
if [ -z "$pgid" ]; then
  echo "pgid not found"
  notify-send "sober-lag.sh" "Could not find PGID for PID $roblox_pid."
  exit 1
fi
echo "pgid: $pgid"

kill -STOP -- "-$pgid"
sleep 0.2
kill -CONT -- "-$pgid"
