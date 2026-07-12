#!/bin/bash

choice=$(printf \
  " Terminal\n\
󰖟 Browser\n\
 Yazi\n\
 Tmux\n\
 Neovim" |
  fuzzel --dmenu)

case "$choice" in
" Terminal")
  ghostty
  ;;

"󰖟 Browser")
  flatpak run "app.zen_browser.zen"
  ;;

" Yazi")
  ghostty -e yazi
  ;;

" Tmux")
  ghostty -e fish -c "tmux-start"
  ;;

" Neovim")
  neovide
  ;;

esac

# 󰖟    
