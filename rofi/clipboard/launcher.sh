#!/usr/bin/env bash

dir="$HOME/.config/rofi/clipboard"
theme='config'

cliphist="$HOME/go/bin/cliphist"

rofi -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}' -theme ${dir}/${theme}.rasi
