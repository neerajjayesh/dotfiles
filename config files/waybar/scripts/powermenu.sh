#!/usr/bin/env bash

options="⏻  Shutdown
  Reboot
  Suspend
󰌾  Hibernate
  Logout"

chosen=$(echo -e "$options" | rofi \
  -dmenu \
  -p "Power" \
  -theme ~/.config/rofi/powermenu.rasi)

case "$chosen" in
  *Shutdown) systemctl poweroff ;;
  *Reboot) systemctl reboot ;;
  *Suspend) systemctl suspend ;;
  *Hibernate) systemctl hibernate ;;
  *Logout) hyprctl dispatch exit ;;
esac
