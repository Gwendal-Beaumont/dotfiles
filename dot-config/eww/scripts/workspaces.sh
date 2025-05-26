#!/bin/bash

get_workspaces () {
    hyprctl workspaces -j | jq -c 'sort_by(.id)'
}

get_workspaces

socat -u UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock - | while read -r line; do
    get_workspaces
done