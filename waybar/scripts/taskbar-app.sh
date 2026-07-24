#!/bin/bash

get_icon() {
  case "$1" in
  app.zen_browser.zen)
    echo "󰖟 "
    ;;
  com.mitchellh.ghostty)
    echo " "
    ;;
  net.cozic.joplin_desktop)
    echo " "
    ;;
  code | com.visualstudio.code)
    echo "󰨞 "
    ;;
  org.gnome.Nautilus)
    echo " "
    ;;
  neovide)
    echo " "
    ;;
  org.gnome.Software)
    echo "󱕷 "
    ;;
  io.freetubeapp.FreeTube)
    echo " "
    ;;
  org.gnome.Console)
    echo " "
    ;;
  spotify)
    echo " "
    ;;
  discord)
    echo " "
    ;;
  *)
    echo "󰣆 "
    ;;
  esac
}

text=""

while IFS='|' read -r id app title focused; do
  icon=$(get_icon "$app")

  if [[ "$focused" == "true" ]]; then
    text+="<span foreground='#89b4fa'>$icon</span> "
  else
    text+="$icon "
  fi
done < <(
  niri msg --json windows |
    jq -r '.[] | "\(.id)|\(.app_id)|\(.title)|\(.is_focused)"'
)

jq -cn \
  --arg text "$text" \
  '{text:$text}'
