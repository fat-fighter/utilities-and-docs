#! /usr/bin/bash

nic=`ip link | grep -vE 'lo:|loopback' | grep -E '[0-9]: (.*?):' | perl -pe 's|[0-9]: (.*?):.*|\1|'`

for ni in $nic; do
	ip link set down $ni
done
