#!/bin/bash

choice=$(printf "  Lock\n󰍃  Logout\n󰤄  Suspend\n  Reboot\n  Shutdown" |
  fuzzel --dmenu)

[ -z "$choice" ] && exit 0

confirm() {
  ans=$(printf "No\nYes" | fuzzel --dmenu --prompt="Are you sure? > ")
  [ "$ans" = "Yes" ]
}

case "$choice" in
"  Lock")
  swaylock -C ~/.config/swaylock/config
  ;;

"󰍃  Logout")
  confirm && niri msg action quit
  ;;

# "󰤄  Suspend")
#   confirm && swaylock -C ~/.config/swaylock/config && systemctl suspend
#   ;;
"󰤄  Suspend")
  if confirm; then
    swaylock -f -C ~/.config/swaylock/config &
    sleep 0.3
    systemctl suspend
  fi
  ;;

"  Reboot")
  confirm && systemctl reboot
  ;;

"  Shutdown")
  confirm && systemctl poweroff
  ;;
esac
