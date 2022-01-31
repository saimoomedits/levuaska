#!/usr/bin/env bash


LOOP_STATUS="$(playerctl loop)"
CURR_SONG="$(playerctl metadata -f {{title}}) - $(playerctl metadata -f {{artist}})"


next="playerctl next"
prev="playerctl previous"
stop="playerctl stop"
togg="playerctl play-pause"

if [ "$LOOP_STATUS" = 'Track' ]; then
    loop='playerctl loop Playlist'
    ex=

elif [ "$LOOP_STATUS" = 'Playlist' ]; then
    loop='playerctl loop None'

else
    loop='playerctl loop Track'
fi

case ${1} in
    loop)     exec $($loop) && notify-send -u low -i $HOME/.icons/Sai-i3/Music.png "Loop" "$(playerctl loop)"
    ;;
    next)     exec $($next)
    ;;
    prev)     exec $($prev)
    ;;
    togg)     exec $($togg)
    ;;
    stop)     exec $($stop)
    ;;    
esac

exit ${?}
