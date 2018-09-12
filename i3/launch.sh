#! /bin/bash

# Restoring Desktop Background
nitrogen --restore

# Set natural scrolling and Velocity Scaling
$HOME/utilities/general/touchpad/natural-scrolling.sh
$HOME/utilities/general/touchpad/tapping.sh
$HOME/utilities/general/touchpad/disabled-while-typing.sh -v

# Make numpad like in Microsoft
setxkbmap -option 'numpad:microsoft'

# Run pnMixer
# pnmixer &

# Run NetworkManager Applet
nm-applet &

# Kill all instances of compton and polybar
killall -q polybar compton

# Run new instance of polybar
while pgrep -x polybar >/dev/null; do
	sleep 1;
done

if type "xrandr"; then
	# Running for all monitors
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar bot &
	done
else
	polybar bot &
fi

# Restart dropbox
dropbox stop; dropbox start

# Wait for 5 seconds before starting compton
sleep 5

# Run new instance of compton
while pgrep -x compton >/dev/null; do
	sleep 1;
done
compton --config=$HOME/.config/compton/config &
