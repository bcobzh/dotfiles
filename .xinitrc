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

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
# DWM status bar
#/home/benoit/tools/DWM/dwm-bar/dwm_bar.sh &
# slstatus &
# keyboad
# setxkbmap fr &
# Display
# xrand --ouput Virtual-1 --mode 1920x1080 &
# Compositor
picom -f &
numlockx &
udiskie &
xmodmap -e "keycode 49 = Escape"
# Loop
# execute DWM
exec bspwm
