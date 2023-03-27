DIR="$HOME/.config/polybar/simple"

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -q right -c "$DIR"/config.ini &
polybar -q left  -c "$DIR"/config.ini &
polybar -q dock  -c "$DIR"/config.ini &
