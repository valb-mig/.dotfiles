# Launch.

DIR="$HOME/.config/polybar/minimal"
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q main -c "$DIR"/config.ini &
polybar -q second -c "$DIR"/config.ini &
