#!/bin/bash

get_volume () {
  VOL=$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2 " " $3}' | tr -d ".[]")
  PERCENTAGE=$(( 10#$(echo $VOL | awk '{print $1}') ))
  MUTED=$(echo $VOL | awk '{print $2}')
  
  printf '{"percentage": "%s", "status": "%s"}\n' "$PERCENTAGE" "$MUTED"
}

get_volume

pactl subscribe | rg --line-buffered "on sink" | while read -r _; do
  get_volume
done