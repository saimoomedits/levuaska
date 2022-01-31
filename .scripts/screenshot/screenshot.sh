#!/usr/bin/env bash

dir="$HOME/.scripts/Rofi/themes"
rofi_command="rofi -theme $dir/four-horizontal.rasi"

# Error msg
msg() {
	notify-send -u normal "Please install 'scrot' first."
}

# Screenshot directory
ss_dir=${HOME}/Pictures/Screenshots

# Options
screen=""
area=""
window=""
timed=""

# Variable passed to rofi
options="$screen\n$area\n$window\n$timed"

chosen="$(echo -e "$options" | $rofi_command -p '' -dmenu -selected-row 1)"
case $chosen in
    $screen)
		if [[ -f /usr/bin/scrot ]]; then
			sleep 1; scrot $ss_dir/Screenshot_%Y-%m-%d-%S_$wx$h.png && notify-send "done"
		else
			msg
		fi
        ;;
    $area)
		if [[ -f /usr/bin/scrot ]]; then
			scrot -s $ss_dir/Screenshot_%Y-%m-%d-%S_$wx$h.png && notify-send "done"
		else
			msg
		fi
        ;;
    $window)
		if [[ -f /usr/bin/scrot ]]; then
			sleep 1; scrot -u ${ss_dir}/Screenshot_%Y-%m-%d-%S_$wx$h.png && notify-send "done"
		else
			msg
		fi
        ;;
    $timed)
		if [[ -f /usr/bin/scrot ]]; then
			scrot -d 3 $ss_dir/Screenshot_%Y-%m-%d-%S_$wx$h.png && notify-send "done"
		else
			msg
		fi
	;;
esac

