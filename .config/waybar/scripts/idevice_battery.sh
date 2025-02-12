#!/bin/bash

if ideviceinfo > /dev/null 2>&1
then
    idevice_id=$(idevice_id)
    idevice_udid=${idevice_id%[[:space:]]*}

    device_name=$(ideviceinfo -u $idevice_udid | awk '/DeviceName/ {for (i=2; i<NF;i++) printf $i " " ; print $NF}')
    capacity=$(ideviceinfo -u $idevice_udid -q com.apple.mobile.battery | awk '/BatteryCurrentCapacity/ {print $2}')
    printf '{"text": "%s", "alt": "0", "tooltip": "%s", "class": "0"}' "$capacity" "$device_name\t$capacity%"
else
    # If the idevice hasn't been found, return an empty '{}'
    printf '{}'
fi

