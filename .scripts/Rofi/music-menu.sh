#!/usr/bin/env bash

status="$(playerctl status)"

ROFI="rofi -theme .scripts/Rofi/themes/four-horizontal.rasi"

A='' B='' C='' D=''

if [ "$status" = 'Paused' ]; then
    B=''
elif [ "$status" = 'Playing' ]; then
    B=''
else
	{HOME}/.scripts/notify-send.sh "No Music is playing!" && exit
fi


MENU="$(printf "${A}\n${B}\n${C}\n${D}\n" | ${ROFI} -p "??" -dmenu -selected-row 1)"

case "$MENU" in
    "$A") exec ${HOME}/.scripts/playerctl.sh prev

    ;;
    "$B") exec ${HOME}/.scripts/playerctl.sh togg

    ;;
    "$C") exec ${HOME}/.scripts/playerctl.sh next

    ;;
    "$D") exec ${HOME}/.scripts/playerctl.sh loop
    ;;
esac 

exit ${?}
