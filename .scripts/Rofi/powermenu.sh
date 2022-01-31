#!/usr/bin/env bash

# Determine `systemd-logind` or `(e)logind`.
if [ -x "$(command -v systemctl)" ]; then
    SEATCTL='systemctl'
elif [ -x "$(command -v loginctl)" ]; then
    SEATCTL='loginctl'
else
    echo "failed"
fi

ROFI="rofi -theme .scripts/Rofi/themes/five-horizontal.rasi"

A='' B='' C='' D='' E=''

MENU="$(printf "${A}\n${B}\n${C}\n${D}\n${E}\n" | ${ROFI} -dmenu -selected-row 2)"

case "$MENU" in
    "$A") exec "${HOME}/.scripts/Rofi/promptmenu.sh" \
              --yes-command "${SEATCTL} poweroff"  \
              -q ' poweroff?'

    ;;
    "$B") exec "${HOME}/.scripts/Rofi/promptmenu.sh" \
              --yes-command "${SEATCTL} reboot"    \
              --query '  reboot?'
    ;;
    "$C") betterlockscreen -l
    ;;
    "$D") if [[ "$("$MUSIC_CONTROLLER" status)" = *'laying'* ]]; then
              "$MUSIC_CONTROLLER" toggle
          fi
          exec "$SEATCTL" suspend
    ;;
    "$E") exec "${HOME}/.scripts/Rofi/promptmenu.sh"               \
              --yes-command "pkill -KILL -u $(id -nu || whoami)" \
              -q '  Logout?'
    ;;
esac 

exit ${?}
