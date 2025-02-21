#!/bin/bash

state=$(eww get open_network_dropdown)

open_dd() {
    if [[ -z $(eww list-windows | grep '*network_dropdown') ]]; then
        eww open network_dropdown
    fi
    eww update open_network_dropdown=true
}

close_dd() {
    eww update open_network_dropdown=false
}

case $1 in
    close)
        close_dd
        exit 0;;
esac

case $state in
    true)
        close_dd;;
    false)
        open_dd;;
esac
