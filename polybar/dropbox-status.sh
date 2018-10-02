#!/bin/bash

STATUS="$(echo `dropbox-cli status` | awk '{print $1;}')"
echo $STATUS

C_status=#fbf1c7
DROPBOX_ICON=""
if [[ $STATUS == *"Dropbox"* ]]; then
  C_status=#fb4934
elif [[ $STATUS == *"Starting"* ]]; then
  #statements
  ICON=
elif [[ $STATUS == *"Syncing"* ]]; then
  DROPBOX_ICON=
else
  I=1
fi
echo "%{F$C_status}$DROPBOX_ICON%{F}$ICON"
#echo "%{A:dropbox start}$DROPBOX_ICON $ICON%{A}"
