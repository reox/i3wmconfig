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
gpg-agent --daemon --write-env-file "${HOME}/.gpg-agent-info"
