#!/usr/bin/env bash

dir="$HOME/.config/rofi/search"
theme='config'

export DDG_ARGS='["-n", 5]'
export ROFI_SEARCH='ddgr'

rofi -modi blocks -blocks-wrap $HOME/rofi-search/rofi-search -show blocks -lines 4 -eh 4 -theme ${dir}/${theme}.rasi
