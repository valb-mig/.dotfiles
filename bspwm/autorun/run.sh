# Restart 
killall eww
killall polybar
killall picom
killall plank
killall stalonetray

#------
# Var's
# ------

# Bars = 'code, redux, regular, simple'
POLYBAR="code"

# Bars = 'bar, pop, simple_one, simple_two'
EWW_BAR_PRIMARY="simple_one"
EWW_BAR_SECONDARY="simple_two"

CONFIG="$HOME/.config/"
EWW="$HOME/.local/bin/eww"

# -------
# Monitor
# -------
xrandr --output HDMI2 --primary --mode 1920x1080 --rotate normal --output eDP1 --mode 1366x768 --rotate normal --left-of HDMI2

# --------
# Fix javapq
# --------
bash -c $CONFIG'bspwm/scripts/java_fix.sh'

# -------
# Polybar
# -------
#bash -c $CONFIG'polybar/'$POLYBAR'/launch.sh &'

# ---------
# Start EWW
# ---------

$EWW -c "$HOME/.config/eww/$EWW_BAR_PRIMARY" --restart open $EWW_BAR_PRIMARY &

$EWW -c "$HOME/.config/eww/$EWW_BAR_SECONDARY" --restart open $EWW_BAR_SECONDARY &

# ---------
# Wallpaper
# ---------
./.fehbg

# ------------
# X Cursor Fix
# ------------

xsetroot -cursor_name left_ptr &

# -----
# Picom
# -----

# picom

# -------
# Borders
# -------

# bash $CONFIG'bspwm/borders'

# -----
# Tray
# -----

# stalonetray


