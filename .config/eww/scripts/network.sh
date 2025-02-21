#!/bin/bash

get_network () {
    signal=$(nmcli -f in-use,signal dev wifi | rg "\*" | awk '{ print $2 }')
    essid=$(nmcli -t -f NAME connection show --active | head -n1 | sed 's/\"/\\"/g')
    echo '{"essid": "'"$essid"'", "signal": "'"$signal"'"}'
}

get_network

ip monitor link | while read -r line; do
    get_network
done