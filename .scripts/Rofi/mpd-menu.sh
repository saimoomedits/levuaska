#!/usr/bin/env bash

mpc status &> /dev/null
if test $? -eq 1
then
	notify-send -t 700 -u normal "mpd is not running" "starting mpd.." && mpd
	exit
fi       



status="$(mpc status | grep "playing")"

ROFI="rofi -theme .scripts/Rofi/themes/four-horizontal.rasi"

A='' B='' C='' D='' 

if  $status ; then
    B=''
else
    B=''
fi

isloop="$(mpc status | grep -o "repeat: on")"

if $isloop ; then
	LOOP_STAT="loop enabled!"
else
	LOOP_STAT="loop disbled!"
fi


MENU="$(printf "${A}\n${B}\n${C}\n${D}\n" | ${ROFI} -p "??" -dmenu -selected-row 1)"

case "$MENU" in
    "$A") ${HOME}/.scripts/mpd/mpd.sh prev

    ;;
    "$B") ${HOME}/.scripts/mpd/mpd.sh togg

    ;;
    "$C") ${HOME}/.scripts/mpd/mpd.sh next

    ;;
    "$D") $HOME/.scripts/mpd/mpd.sh loop && notify-send -t 950 "Hey!" "$LOOP_STAT"
    ;;
esac 

exit ${?}
