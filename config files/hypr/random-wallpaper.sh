#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/wallpapers"

# Pick a random image
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( \
  -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.webp" \
\) | shuf -n 1)

# Safety check
[ -z "$WALLPAPER" ] && exit 1

# Set wallpaper with transition
swww img "$WALLPAPER" \
  --transition-type wipe --transition-angle 30 \
  --transition-duration 1 \
  --transition-fps 60 
