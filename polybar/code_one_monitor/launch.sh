DIR="$HOME/.config/polybar/code_one_monitor"
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q right -c "$DIR"/config.ini

