#!/usr/bin/env bash

if pgrep -f 'app.zen_browser.zen.*-P Main' >/dev/null; then
  exit 0
else
  flatpak run app.zen_browser.zen -P Main
fi
