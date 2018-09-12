#!/bin/bash

UTILS="$HOME/Utils/utils-and-docs"

proxy="bsnlproxy.iitk.ac.in"
port="3128"

if [ ! -f /etc/apt/apt.conf ]; then
	sudo touch /etc/apt/apt.conf
fi
text="`cat /etc/apt/apt.conf | grep -vwE 'Proxy'`"

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

if [[ $reverse == false ]]; then
    source $UTILS/config.sh
    proxy="$user:$pass@$proxy:$port"

    text="$text\nAcquire::http::Proxy \"http://$proxy\";"
    text="$text\nAcquire::https::Proxy \"https://$proxy\";"
    text="$text\nAcquire::ftp::Proxy \"ftp://$proxy\";"
fi

echo -e "$text" | sudo tee /etc/apt/apt.conf > log
rm log
