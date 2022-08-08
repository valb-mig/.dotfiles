#!/usr/bin/env bash

theme="config.rasi"

dir="$HOME/.config/rofi/droid/search"
styles="config.rasi"
color="colors.rasi"

rofi -no-lazy-grab -show drun \
-modi run,drun,window \
-theme $dir/"$theme"

