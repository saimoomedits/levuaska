#!/bin/sh

# a simple script to show whats the next song on my mpd playlist.
# Author : saimoom
# copyright : there is none...
# joke : free as in freedom

mpc status &> /dev/null
if test $? -eq 1
then
	exit
fi

current=$(mpc status | head -1)
next=$(mpc playlist | grep -A 1 "$current" | sed -e "s/\<$current\>//g")

if [ "$next" = "" ]; then
	next=$(mpc playlist | head -1)
	echo -e " \033[1;32m[]$next\n"
else
	echo -e " \033[1;32m[]$next\n"
fi
