#!/bin/bash

brightnessctl -m --device='intel_backlight' | cut -d, -f4 | tr -d %

dbus-monitor "type='signal',interface='org.freedesktop.DBus.Properties',member='PropertiesChanged'" | rg --line-buffered "backlight" | while read -r _; do
  brightnessctl -m --device='intel_backlight' | cut -d, -f4 | tr -d %
done