#!/usr/bin/env bash

op=$( echo -e " Poweroff\n Reboot\n Suspend\n Lock\n Logout" | wofi -W 400 -H 400 --dmenu | awk '{print tolower($2)}' )

case $op in 
    poweroff)
        ;&
    reboot)
        ;&
    suspend)
        systemctl $op;;
    lock)
        swaylock;;
    logout)
        hyprctl dispatch exit;;
esac
