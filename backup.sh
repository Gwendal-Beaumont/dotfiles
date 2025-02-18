#!/bin/bash

DOTCONFIG=$HOME/.config/
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
LOCAL_DOTCONFIG=$SCRIPT_DIR/.config
FOLDER=""

# Start
echo "Backing up files..."

# Go to script directory
cd $SCRIPT_DIR

for ARG in $@
do
	case "$ARG" in
		"hyprland" | "hypr")
			FOLDER="hypr"
		;;
		"waybar")
			FOLDER="waybar"
		;;
		"rofi")
			FOLDER="rofi"
		;;
		"wlogout")
			FOLDER="wlogout"
		;;
		"eww")
			FOLDER="eww"
		;;
		*) echo "Unsupported folder '$ARG'" && exit 1
		;;
	esac
	rm -rf "$LOCAL_DOTCONFIG/$FOLDER/"
	cp -r "$DOTCONFIG/$FOLDER/" $LOCAL_DOTCONFIG
	echo "Backed up $FOLDER folder..."
done

