#!/bin/bash

# Kill any running instances
eww kill

# Start a bar for each monitor
MONITORS=$(hyprctl monitors -j | jq '.[] | .id')

for monitor in ${MONITORS}; do
    eww open bar --screen ${monitor} --id ${monitor}
done

# TODO: Work on the notification system

# eww open notifications_popup
# ~/.config/eww/scripts/notifications.py &