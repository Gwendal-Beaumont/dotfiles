#!/bin/bash

raw_stats=$(nmcli -g SSID,SIGNAL,SECURITY,IN-USE dev wifi)
grouped_stats=$(echo "$raw_stats" | awk -F: '!seen[$1]++' 2>/dev/null)
formatted_stats=$(echo "$grouped_stats" | awk -F: 'NR > 1 { printf(", ") } { printf("\{\"SSID\"\: " "\""$1"\"" "\, \"SIGNAL\"\: " $2 "\, \"SECURITY\"\: " "\""$3"\", \"IN-USE\"\: \""$4"\"}") }' 2>/dev/null | sed "s/^/[/;s/$/]/")

echo "$formatted_stats"

# echo $(nmcli -g SSID,SIGNAL,SECURITY,IN-USE dev wifi | awk -F: '!seen[$1]++' 2>/dev/null | awk -F: 'NR > 1 { printf(", ") } { printf("\{\"SSID\"\: " "\""$1"\"" "\, \"SIGNAL\"\: " $2 "\, \"SECURITY\"\: " "\""$3"\", \"IN-USE\"\: \""$4"\"}") }' 2>/dev/null | sed "s/^/[/;s/$/]/")
