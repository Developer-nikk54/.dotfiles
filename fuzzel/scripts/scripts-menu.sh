#!/bin/bash

choice=$(printf \
  " Terminal\n\
 Yazi\n\
 Tmux\n\
󰆏 Zellij\n\
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

"󰆏 Zellij")
  ghostty -e fish -c "zellij"
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
  flatpak run "com.brave.Browser"
  ;;

"󰅻 Accounts")
  flatpak run "org.ferdium.Ferdium"
  ;;

esac

# 󰖟    
