#! /bin/bash

reverse=false
while getopts "vh:p:" option; do
	case "${option}" in
		v)
			reverse=true
			;;
	esac
done

id=$( xinput list | egrep "slave.*pointer" | grep -v XTEST | sed -e 's/^.*id=//' -e 's/\s.*$//' )

if [[ $reverse == true ]]; then
	xinput --set-prop $id 280 0
else
	xinput --set-prop $id 280 1
fi
