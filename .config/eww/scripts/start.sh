#!/bin/bash

# Kill any running instances
pkill eww

# Start a bar for each monitor
MONITORS=$(hyprctl monitors | awk -F': ' '/model/ {print $2}')

IFS=$'\n'
for monitor in $MONITORS
do
    echo $monitor
    eww open bar --screen ${monitor} --id ${monitor}
done

# TODO: Work on the notification system

# eww open notifications_popup
# ~/.config/eww/scripts/notifications.py &