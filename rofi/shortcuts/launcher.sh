#!/usr/bin/env bash

# Import Current Theme
theme="$HOME"/.config/rofi/shortcuts/config.rasi
BROWSER="Firefox"

# Theme Elements
prompt='Quick Links'
mesg="Using '$BROWSER' as web browser"

list_col='1'
list_row='3'

efonts="jetBrainsMono Nerd Font 50"

# Options

option_1="󰈹"
option_2="󰊤"
option_3="󰨞"

# Rofi CMD
rofi_cmd() {
	rofi -theme-str "listview {columns: $list_col; lines: $list_row;}" \
		-theme-str 'textbox-prompt-colon {str: "";}' \
		-theme-str "element-text {font: \"$efonts\";}" \
		-dmenu \
		-p "$prompt" \
		-mesg "$mesg" \
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
		xdg-open 'https://github.com/'
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
