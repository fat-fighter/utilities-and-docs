#!/bin/bash

proxy="bsnlproxy.iitk.ac.in"
port="3128"

source $UTILS/config.sh

OPTIND=1

reverse=false

while getopts "vh:p:" option; do
	case "${option}" in
		v)
			reverse=true
			;;
		h)
			proxy="$OPTARG"
			;;
		p)
			port="$OPTARG"
			;;
	esac
done

if [[ $reverse == true ]]; then
	dropbox proxy none
else
	dropbox proxy manual http $proxy $port $user $pass
fi
