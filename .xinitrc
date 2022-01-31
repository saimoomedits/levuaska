#!/bin/sh

# merge .Xresources
xrdb merge ${HOME}/.Xresources &

# compositor
picom &

# wallpaper
nitrogen --restore &

# notification daemon
dunst &


# window manager
exec bspwm

