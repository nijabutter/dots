#!/bin/sh

if [ "$1" != "-u" ]; then
    drive=/dev/"$(lsblk -l -n -o NAME,SIZE /dev/sd**[0-9] | rofi -dmenu -p "Drive" | awk '{print $1;}')"

    if [ "$drive" = "/dev/" ]; then
        exit
    fi

fi

MOUNT=/mnt/

location=$MOUNT"$(ls /mnt | rofi -dmenu -p "Location")"

if [ "$location" = "$MOUNT" ]; then
    exit
fi

password="$(rofi -dmenu -password -i -p "Password" -no-fixed-num-lines)"



if [ "$1" = "-u" ]; then
    out="$(echo $password | sudo -S umount $location)"
else
    out="$(echo $password | sudo -S mount $drive $location)"
fi
