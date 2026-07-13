#!/bin/bash

zenity --question \
    --text='You pressed the exit shortcut.\nDo you really want to exit sway? This will end your Wayland session.' \
    --title='Exit Sway Confirmation' \
    && swaymsg exit
