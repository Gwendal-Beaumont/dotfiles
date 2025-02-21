#!/bin/bash

airplane_toggled=$(eww get airplane_mode)

if [ "$airplane_toggled" = true ]
then
  rfkill unblock all
  eww update airplane_mode=false
else
  rfkill block all
  eww update airplane_mode=true
fi

