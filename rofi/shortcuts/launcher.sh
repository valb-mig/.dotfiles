#!/usr/bin/env bash

# Import Current Theme
theme="$HOME"/.config/rofi/shortcuts/config.rasi
BROWSER="Firefox"

# Theme Elements
prompt=''

list_col='1'
list_row='3'

efonts="Symbols Nerd Font 15"

# Options

option_1="󰈹 Firefox"
option_2="󰝰 Files"
option_3="󰨞 Code"

# Rofi CMD
rofi_cmd() {
	rofi -theme-str "listview {columns: $list_col; lines: $list_row;}" \
		-theme-str 'textbox-prompt-colon {str: "Quicklinks";}' \
		-theme-str "element-text {font: \"$efonts\";}" \
		-dmenu \
		-p "$prompt" \
		-markup-rows \
		-theme ${theme}
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$option_1\n$option_2\n$option_3" | rofi_cmd
}

# Execute Command
run_cmd() {
	if   [[ "$1" == '--opt1' ]]; then
        firefox
	elif [[ "$1" == '--opt2' ]]; then
		nautilus
	elif [[ "$1" == '--opt3' ]]; then
		code
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $option_1)
		run_cmd --opt1
        ;;
    $option_2)
		run_cmd --opt2
        ;;
    $option_3)
		run_cmd --opt3
        ;;
esac
