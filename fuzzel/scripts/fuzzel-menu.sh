#!/bin/bash
choice=$(printf \
  " Apps\n\
 Scripts\n\
󰐥 Power" |
  fuzzel --dmenu)

case "$choice" in
" Apps")
  fuzzel
  ;;

" Scripts")
  ~/.config/fuzzel/scripts/scripts-menu.sh
  ;;

"󰐥 Power")
  ~/.config/fuzzel/scripts/powermenu.sh
  ;;
esac
