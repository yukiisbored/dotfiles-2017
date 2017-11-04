#!/bin/sh

. ~/.xprofile

xrdb -m ~/.Xresources
xset b off

~/.screenlayout/work.sh

feh --bg-fill ~/.wallpaper
xfce4-power-manager -d
xscreensaver -no-splash &
emacs --daemon

exec dbus-launch dwm
