#!/usr/bin/bash

# Print
scrot $HOME'/Pictures/Screenshots/shot_%d-%m-%Y_%H:%M.png'

# Notification
notify-send 'Screenshot' 'normal printscreen' -i $HOME/Pictures/Icons/screen.png -u low
