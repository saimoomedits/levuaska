#!/usr/bin/env bash

dir="$HOME/.scripts/Rofi/themes"
rofi_command="rofi -theme $HOME/.config/rofi/theme.rasi"

# Error msg
msg() {
	notify-send -u normal "'vim' is not installed!"
}

# Screenshot directory
ss_dir=${HOME}/Pictures/Screenshots

# Options
rofi="rofi/config.rasi"
polybar="polybar/config"
bspwm="bspwm/bspwmrc"
gtk_theme="Set gtk theme"
qt_theme="Set qt theme"
sxhkd="sxhkd/sxhkdrc"
Xresources=".Xresources"

# Variable passed to rofi
options="$rofi\n$polybar\n$bspwm\n$sxhkd"

chosen="$(echo -e "$options" | $rofi_command -p 'Select a config file to edit :' -dmenu -selected-row 1)"
case $chosen in
    $rofi)
		if [[ -f /usr/bin/vim ]]; then
			vim ${HOME}/.config/rofi/config.rasi
		else
			msg
		fi
        ;;
    $polybar)
		if [[ -f /usr/bin/vim ]]; then
			vim ${HOME}/.config/polybar/config	
		else
			msg
		fi
        ;;
    $bspwm)
		if [[ -f /usr/bin/vim ]]; then
			vim ${HOME}/.config/bspwm/bspwmrc	
		else
			msg
		fi
        ;;
	
    $sxhkd)
		if [[ -f /usr/bin/vim ]]; then
			vim ${HOME}/.config/sxhkd/sxhkrc
		else
			msg
		fi
        ;;
esac

