#!/bin/bash

STATUS="$(echo `dropbox-cli status` | awk '{print $1;}')"

status_color_idle=#ffffff
status_color_running=#ffffff
dropbox_icon=
syncing_icon=⇅
connecting_icon=

STATE=Idle

ICON=""

if [[ $STATUS == *"Dropbox"* ]]; then
	STATE=Disconnected
elif [[ $STATUS == *"Starting"* ]]; then
	ICON=$connecting_icon
	STATE=Running
elif [[ $STATUS == *"Connecting"* ]]; then
	ICON=$connecting_icon
	STATE=Running
elif [[ $STATUS == *"Syncing"* ]]; then
	ICON=$syncing_icon
	STATE=Running
fi

if [[ $STATE == "Idle" ]]; then
	echo "%{F${status_color_idle}}${dropbox_icon}%{F-}"
elif [[ $STATE == "Running" ]]; then
	echo "%{F${status_color_running}}${dropbox_icon}%{F-} %{T2}${ICON}%{T-}"
else
	echo ""
fi
