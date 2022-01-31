#!/usr/bin/env bash
# a simple script to control mpd using mpc
# if you dont have mpc you must install it 
# # pacman -S mpc

mpc status &> /dev/null
if test $? -eq 1
then
	echo "mpd is not running... maybe try running it next time. exiting."
	exit
fi       


# variables for the commands
next="mpc next"
prev="mpc prev"
stop="mpc stop"
togg="mpc toggle"
single="mpc single"
loop="mpc repeat"

# options
case ${1} in
    loop)     $($loop &> $HOME/.scripts/logs/log.txt) 
    ;;
    next)     $($next &> $HOME/.scripts/logs/log.txt)
    ;;
    prev)     $($prev &> $HOME/.scripts/logs/log.txt)
    ;;
    togg)     $($togg &> $HOME/.scripts/logs/log.txt)
    ;;
    stop)     $($stop &> $HOME/.scripts/logs/log.txt)
    ;;
    single)	$($single &> $HOME/.scripts/log/log.txt)
    ;;
esac

# extra fun stuffs
SONG=$(mpc status | head -1)
if [ $(mpc status | grep "paused") ]
then
	SONG_STAT="and its paused sadly.. :("
else
	SONG_STAT="yay! its playing"
fi

printf "
hello, your volume is$(mpc status | grep -oP 'volume:.{0,3}' | sed -e 's/\<volume\>//g')
your current song is '$SONG'
$SONG_STAT
your next song will be '$($HOME/.scripts/mpd/mpd-next.sh)',
cool songs you got btw!
as always stay awesome and listen to music!
"

exit ${?}
