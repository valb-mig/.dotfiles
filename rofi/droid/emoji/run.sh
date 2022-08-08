#!/usr/bin/env bash

theme="config.rasi"

dir="$HOME/.config/rofi/droid/emoji"
styles="config.rasi"
color="$HOME/colors.rasi"

rofi -no-lazy-grab -show emoji \
-modi emoji \
-theme $dir/"$theme"

