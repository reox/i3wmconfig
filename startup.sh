#!/bin/bash

# disable dmps and bell
xset -dpms &
xset s off &
xset -b &

# keyboard layout
# setxkbmap us altgr-intl -option ctrl:nocaps &
# Should be set by /etc/default/keyboard

# run a few things on startup
#wmname LG3D &
