#!/bin/bash

DOTCONFIG=$HOME/.config/
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
LOCAL_DOTCONFIG=$SCRIPT_DIR/.config

# Start
echo "Backing up files..."

# Go to script directory
cd $SCRIPT_DIR

for ARG in $@
do
	case "$ARG" in
		"hyprland" | "hypr")
			FOLDER="hypr"
			rm -rf "$LOCAL_DOTCONFIG/$FOLDER/"
			cp -r "$DOTCONFIG/$FOLDER/" $LOCAL_DOTCONFIG
			echo "Backed up $FOLDER folder..."
		;;
		"waybar")
			FOLDER="waybar"
			rm -rf "$LOCAL_DOTCONFIG/$FOLDER/"
			cp -r "$DOTCONFIG/$FOLDER/" $LOCAL_DOTCONFIG
			echo "Backed up $FOLDER folder..."
		;;
		"rofi")
			FOLDER="rofi"
			rm -rf "$LOCAL_DOTCONFIG/$FOLDER/"
			cp -r "$DOTCONFIG/$FOLDER/" $LOCAL_DOTCONFIG
			echo "Backed up $FOLDER folder..."
		;;
		"wlogout")
			FOLDER="wlogout"
			rm -rf "$LOCAL_DOTCONFIG/$FOLDER/"
			cp -r "$DOTCONFIG/$FOLDER/" $LOCAL_DOTCONFIG
			echo "Backed up $FOLDER folder..."
		;;
		*) echo "Unsupported folder"
		;;
	esac
done

