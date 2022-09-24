#!/usr/bin/bash

# Print
scrot 'Pictures/Screenshots/shot_%H%M%S.png' -s 

# Notification
notify-send "Cut Printscreen"

