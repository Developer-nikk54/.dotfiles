#!/bin/bash
# swaybg -i "$HOME/Pictures/wallpaper/wallpaperflare.com_wallpaper.jpg" -m "fill"

WALLPAPER_DIR="$HOME/Pictures/wallpaper"
STATE_FILE="$HOME/.cache/swaybg-wallpaper-index"

# Supported extensions
# mapfile -t wallpapers < <(
#   find "$WALLPAPER_DIR" -maxdepth 1 -type f \
#     \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) |
#     sort
# )
shopt -s nullglob

wallpapers=(
  "$HOME"/Pictures/wallpaper/*.jpg
  "$HOME"/Pictures/wallpaper/*.jpeg
  "$HOME"/Pictures/wallpaper/*.png
  "$HOME"/Pictures/wallpaper/*.webp
)

IFS=$'\n' wallpapers=($(printf "%s\n" "${wallpapers[@]}" | sort))
unset IFS

# Exit if no wallpapers found
((${#wallpapers[@]} == 0)) && exit 1

# Read previous index
if [[ -f "$STATE_FILE" ]]; then
  index=$(<"$STATE_FILE")
else
  index=0
fi

# Reset if index exceeds wallpaper count
if ((index >= ${#wallpapers[@]})); then
  index=0
fi

# Kill previous swaybg instance
pkill -x swaybg 2>/dev/null

# Set wallpaper
swaybg -i "${wallpapers[$index]}" -m fill &

# Save next index
echo $(((index + 1) % ${#wallpapers[@]})) >"$STATE_FILE"
