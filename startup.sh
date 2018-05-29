#!/bin/bash

# disable dmps and bell
xset -dpms &
xset s off &
xset -b & 

# keyboard layout
setxkbmap us altgr-intl -option ctrl:nocaps

# run a few things on startup
wmname LG3D &
