#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

setxkbmap gb &
xset m 0 0
xrandr --output DP-0 --mode 1920x1080 --rate 144.0
xinput --set-prop "SINOWEALTH Wired Gaming Mouse" "libinput Accel Speed" -0.67
xsetwacom --set "Wacom Intuos2 6x8 Pen stylus" Area "0 0 30480 24360"
xsetwacom --set "Wacom Intuos2 6x8 Pen stylus" Mode "Relative"
xrandr --dpi 96
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

nitrogen --restore &
picom --vsync --blur-background-fixed --no-fading-openclose -i 1.0 -e 1.0 -I 1.0 -O 1.0 -D 0 -m 1.0 &
exec i3
