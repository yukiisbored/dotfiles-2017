#!/bin/sh

. ~/.xprofile

~/.screenlayout/work.sh

# TODO: Adjust delay and rate
xset r off

feh --bg-fill ~/.wallpaper
xfce4-power-manager -d
xscreensaver -no-splash &
dwmstat

exec dbus-launch dwm
