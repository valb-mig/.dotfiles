#!/usr/bin/bash

# Print
scrot $HOME'/Pictures/Screenshots/cut_shot_%d-%m-%Y_%H:%M.png' -s 

# Notification
notify-send 'Screenshot' 'cut printscreen' -i $HOME/Pictures/Icons/screen.png -u low
