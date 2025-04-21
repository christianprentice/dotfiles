#!/bin/bash

# Use zenity (or yad) to ask for confirmation
# --question: standard question dialog with Yes/No buttons
# --text: the message to display. Use \n for newlines.
# --title: sets the window title
# --no-wrap: prevents the text from wrapping (optional)
# zenity returns 0 if Yes is clicked, 1 if No is clicked, >1 for other issues (like timeout)
zenity --question \
       --text='You pressed the exit shortcut.\nDo you really want to exit sway? This will end your Wayland session.' \
       --title='Exit Sway Confirmation'

# Check the exit status of zenity
ZENITY_EXIT_STATUS=$?

# If the exit status is 0 (User clicked Yes)
if [ $ZENITY_EXIT_STATUS -eq 0 ]; then
    # Execute the command to exit sway
    swaymsg exit
fi

# If the exit status is not 0, the script simply ends, and sway is not exited.
