#!/bin/sh

. ~/.xprofile

xrdb -m ~/.Xresources
xset b off

if [ -f .quirky-keys ]; then
    xset r off
fi

~/.screenlayout/work.sh

feh --bg-fill ~/.wallpaper
xfce4-power-manager -d
xscreensaver -no-splash &
yukistatus &
emacs --daemon

eval $(dbus-launch --sh-syntax --exit-with-session)

exec dwm
