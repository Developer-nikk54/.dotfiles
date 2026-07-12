#!/bin/bash

if pgrep -x btop >/dev/null; then
  pkill -x btop
else
  ghostty -e btop >/dev/null 2>&1 &
fi
# Workspace 1 par switch ho jao
niri msg action focus-workspace 1
