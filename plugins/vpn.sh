#!/usr/bin/env bash

source "$HOME/.config/sketchybar/colors.sh"

VPN=$(/usr/local/bin/piactl get connectionstate)

if [ $VPN = "Connected" ]; then
  sketchybar --set "Private Internet Access,Item-0" alias.color=0xff${NORD14:1}
else
  sketchybar --set "Private Internet Access,Item-0" alias.color=0xff${NORD11:1}
fi
