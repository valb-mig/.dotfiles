#!/usr/bin/bash

# Print
scrot $HOME'/Pictures/Screenshots/cut_shot_%d-%m-%Y_%H:%M.png' -s 

# Notification
notify-send 'Screenshot' 'cut printscreen' -i $HOME/.config/sxhkd/icons/screen.png -u low
