#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 30 \
        --delay 5 \
        --scroll-padding "  " \
        --match-command "`dirname `${HOME}/.scripts/Polybar/now-playing/get_status.sh --status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true "`dirname `${HOME}/.scripts/Polybar/now-playing/get_status.sh" &

wait


