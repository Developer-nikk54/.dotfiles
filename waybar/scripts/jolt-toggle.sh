#!/bin/bash

# jolt battery tui toggle
if pgrep -x jolt >/dev/null; then
  pkill -x jolt
else
  ghostty -e jolt >/dev/null 2>&1 &
fi
# Workspace 1 par switch ho jao
niri msg action focus-workspace 1
