#!/bin/bash

choice=$(printf \
  " Terminal\n\
 Yazi\n\
 Tmux\n\
 Notes\n\
󰑈 FreeTube\n\
 Neovide\n\
󰖟 Main Browser\n\
󰭻 AI Browser\n\
󰅻 Accounts" |
  fuzzel --dmenu)

case "$choice" in
" Terminal")
  ghostty
  ;;

" Yazi")
  ghostty -e yazi
  ;;

" Tmux")
  ghostty -e fish -c "tmux-start"
  ;;

" Neovide")
  neovide
  ;;

" Notes")
  flatpak run "net.cozic.joplin_desktop"
  ;;

"󰑈 FreeTube")
  flatpak run "io.freetubeapp.FreeTube"
  ;;

"󰖟 Main Browser")
  flatpak run "app.zen_browser.zen" "-P" "Main"
  ;;

"󰭻 AI Browser")
  flatpak run "app.zen_browser.zen" "-P" "AI"
  ;;

"󰅻 Accounts")
  flatpak run "org.ferdium.Ferdium"
  ;;

esac

# 󰖟    
