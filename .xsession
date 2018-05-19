#!/bin/sh

. ~/.xprofile

xrdb -m ~/.Xresources
xset b off

if [ -f .quirky-keys ]; then
    xset r off
fi

~/.screenlayout/work.sh

eval $(dbus-launch --sh-syntax --exit-with-session)

workrave &

exec awesome
