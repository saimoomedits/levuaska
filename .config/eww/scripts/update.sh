#!/bin/sh

updates=$(pacman -Qu | wc -l)


if [ $updates = "1" ]; then
    icon=""
    col_bg="#1e1e28"
    col="#575268"
    ups="0"
else
    icon=""
    col="#94cbf8"
    col_bg="#1e1e28"
    ups="$updates"
fi



if [[ "$1" == "--COL" ]]; then
    echo $col	
elif [[ "$1" == "--BGCOL" ]]; then
	echo $col_bg
elif [[ "$1" == "--UPS" ]]; then
	echo $ups
elif [[ "$1" == "--ICON" ]]; then
	echo $icon
fi

