#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

### My stuff

# Statusbar loop
while true; do
   xsetroot -name "$( cat /sys/class/power_supply/BAT0/capacity )% | $( date +"%d/%m/%+4Y %R")"
#   xsetroot -name "$( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &

# keyboard
setxkbmap ee &
setxkbmap -option; setxkbmap -option caps:ctrl_modifier

# hiir
unclutter &
xsetroot -cursor_name left_ptr &

# Environment
setbg /home/rasmus/.local/scripts/data/wp.jpg
dunst &
sxhkd &
xcompmgr &
while type dwm >/dev/null; do dwm && continue || break; done
