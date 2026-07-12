#!/bin/bash

if pgrep -x gnome-disks >/dev/null; then
  pkill -x gnome-disks
else
  gnome-disks >/dev/null 2>&1 &
fi
