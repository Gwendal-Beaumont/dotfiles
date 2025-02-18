#!/bin/bash

echo $(( 10#$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2}' | tr -d ".") ))

pactl subscribe | rg --line-buffered "on sink" | while read -r _; do
  VOL=$(( 10#$(wpctl get-volume @DEFAULT_SINK@ | awk '{print $2}' | tr -d ".") ))
  if [ $VOL -eq 0 ]
  then
    echo $VOL
  else
    echo $VOL
  fi
done