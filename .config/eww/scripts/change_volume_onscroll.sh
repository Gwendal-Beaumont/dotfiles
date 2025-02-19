#!/bin/bash
direction=$1
percentage=$2

if [[ $direction == "down" ]]; then
    percentage=$(( $percentage-5 ))
elif [[ $direction == "up" && percentage -lt 100 ]]; then
    percentage=$(( $percentage+5 ))
fi

wpctl set-volume @DEFAULT_SINK@ ${percentage}%