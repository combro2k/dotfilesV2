#!/usr/bin/env bash

case ${1} in
  focused)
    grim -g "$(swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"')" $(xdg-user-dir PICTURES)/$(date +'%s_window_grim.png')
    ;;
  monitor)
    grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') $(xdg-user-dir PICTURES)/$(date +'%s_monitor_grim.png')
    ;;
  region)
    grim -g "$(slurp)" $(xdg-user-dir PICTURES)/$(date +'%s_region_grim.png')
    ;;

  focused_clipboard)
    grim -g "$(swaymsg -t get_tree | jq -j '.. | select(.type?) | select(.focused).rect | "\(.x),\(.y) \(.width)x\(.height)"')" - | wl-copy
    ;;
  monitor_clipboard)
    grim -o $(swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .name') - | wl-copy
    ;;
  region_clipboard)
    grim -g "$(slurp)" - | wl-copy
    ;;

esac
