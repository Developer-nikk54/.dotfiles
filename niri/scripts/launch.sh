#!/bin/bash

if pgrep -x waybar >/dev/null; then
  pkill waybar
  pkill swaync
else
  waybar >/dev/null 2>&1 &
  swaync -c ~/.config/swaync/config.json -s ~/.config/swaync/style.css >/dev/null 2>&1 &
fi
