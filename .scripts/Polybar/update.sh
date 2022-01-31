#!/bin/sh

updates=$(pacman -Qu | wc -l)


echo ${updates}

if [ $updates = "0"  ]; then
	notify-send -u normal -i ${HOME}/.icons/UI/package.png "No update available" "try again later." 
elif [ $updates = "1" ]; then
	notify-send -u normal -i ${HOME}/.icons/UI/package.png "$(Pacman -Qu)"  "Only 1 package can be updated."
else
	notify-send -u normal -i ${HOME}/.icons/UI/package.png "$updates updates availbale!" "run 'sudo pacman -Syu'"
fi

