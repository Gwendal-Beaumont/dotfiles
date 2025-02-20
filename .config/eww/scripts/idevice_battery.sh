#!/bin/bash

idevice_detected=$(eww get idevice_detected)

if ideviceinfo > /dev/null 2>&1
then
    if [ "$idevice_detected" = false ]
    then
        eww update idevice_detected=true
    fi
    idevice_udid=$(idevice_id | awk '{print $1}')
    device_name=$(idevicename)
    capacity=$(ideviceinfo -u $idevice_udid -q com.apple.mobile.battery | awk '/BatteryCurrentCapacity/ {print $2}')

    eww update idevice_info="{\"name\": \"${device_name}\", \"capacity\": ${capacity}}"
    echo "{\"name\": \"${device_name}\", \"capacity\": ${capacity}}"
else
    if [ "$idevice_detected" = true ]
    then
        eww update idevice_detected=false
    fi
    eww update idevice_info="{\"name\": \"example_iDevice\", \"capacity\": 0}"
fi

