#!/bin/bash

STATUS="$(echo `dropbox-cli status` | awk '{print $1;}')"

C_status=#fbf1c7
DROPBOX_ICON=""

if [[ $STATUS == *"Dropbox"* ]]; then
	STATUS_COLOR=#ec644b
elif [[ $STATUS == *"Starting"* ]]; then
	ICON=
elif [[ $STATUS == *"Connecting"* ]]; then
	ICON=
elif [[ $STATUS == *"Syncing"* ]]; then
	DROPBOX_ICON=
fi
echo "%{F${STATUS_COLOR}}${DROPBOX_ICON}%{F-} ${ICON}"
