#!/bin/bash

# disable dmps
xset -dpms
# Disable screensaver
xset s off
# Turn bell off
xset b off

# screenlocker
# xautolock -detectsleep -time 3 -locker "i3lock -i ~/.i3/lockscreen.png -f" -notify 30 -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 30 seconds'" &

# mouse and trackball settings
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 8 1
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 8 2
xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Timeout" 8 200
xinput set-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 6 7 4 5
# synclient TouchPadOff=1

# keyboard layout
setxkbmap us altgr-intl -option ctrl:nocaps

# run a few things on startup
wmname LG3D
gpg-agent --daemon --write-env-file "${HOME}/.gpg-agent-info"
