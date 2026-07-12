#!/bin/bash

if pgrep -x gnome-calendar >/dev/null; then
  pkill -x gnome-calendar
else
  gnome-calendar >/dev/null 2>&1 &
fi
