#!/bin/bash

# disable dmps and bell
xset -dpms &
xset s off &
xset -b & 

# keyboard layout
setxkbmap us altgr-intl -option ctrl:nocaps

# run a few things on startup
wmname LG3D &
pidgin &

xsetroot -solid "#111111"
feh --bg-scale ~/.i3/wallpaper/2001-a-space-odyssey-original_0.jpg &
gpg-agent --daemon --write-env-file "${HOME}/.gpg-agent-info" &

xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 0x0 --rotate right --output DVI-I-1 --off --output DVI-I-0 --off --output DP-1 --primary --mode 2560x1440 --pos 1080x0 --rotate normal --output DP-0 --off
