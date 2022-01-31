#!/usr/bin/env bash
# a simple script to control mpd using mpc
# if you dont have mpc you must install it 
# # pacman -S mpc

mpc status &> /dev/null
if test $? -eq 1
then
	echo "mpd is not running..."
	mpd && notify-send -u low "mpd" "started!" exit
fi       

case ${1} in
	stop)	killall mpd && notify-send -u low "mpd" "stopped"
		;;
	client)	urxvt -e ncmpcpp
		;;	
esac

exit
