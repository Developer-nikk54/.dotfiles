#!/bin/bash

if pgrep -x nmtui >/dev/null; then
  pkill -x nmtui
else
  # ghostty --window-width=39 --window-height=25 -e nmtui >/dev/null 2>&1 &
  ghostty -e nmtui >/dev/null 2>&1 &
fi
# Workspace 1 par switch ho jao
# niri msg action focus-workspace 1
