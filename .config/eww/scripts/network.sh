#!/bin/bash

get_network () {
    signal=$(nmcli -f IN-USE,signal dev wifi | rg "\*" | awk '{ print $2 }')
    raw=$(nmcli -g NAME,TYPE connection show --active | head -n1)
    essid=$(echo $raw | awk -F: '{ print $1 }' | sed 's/\"/\\"/g')
    raw_type=$(echo $raw | awk -F: '{ print $2 }')
    type=$(if [[ $raw_type == *"ethernet"* ]]; then echo ethernet; else echo wireless; fi)
    echo '{"essid": "'"$essid"'", "type": "'"$type"'", "signal": "'"$signal"'"}'
}

get_network

ip monitor link | while read -r line; do
    get_network
done