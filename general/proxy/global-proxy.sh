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
	ftp=""
	http=""
	https=""
else
    proxy="$user:$pass@$proxy:$port"
	
	ftp="ftp://$proxy"
	http="http://$proxy"
	https="https://$proxy"
fi

export ftp_proxy="$ftp"
export http_proxy="$http"
export https_proxy="$https"
