#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x

dir="$HOME/.config/rofi/search"
theme='config'

## Run
rofi \
    -show drun \
    -theme ${dir}/${theme}.rasi

