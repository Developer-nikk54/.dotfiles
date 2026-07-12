#!/bin/bash

APP="bluejay"
FLATPAK_ID="io.github.ebonjaeger.bluejay"

if pgrep -x "$APP" >/dev/null; then
  pkill -x "$APP"
else
  flatpak run "$FLATPAK_ID" >/dev/null 2>&1 &
fi
