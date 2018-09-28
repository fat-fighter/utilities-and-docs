connmanctl scan wifi
wifi=$( connmanctl services | fzf )

ssid=$( echo $wifi | cut -d' ' -f2 )
cnid=$( echo $wifi | cut -d' ' -f3 )

echo -n "Username: "
read uname
echo -n "Password: "
read -s upass
echo ""

echo ${cnid}
sudo tee /var/lib/connman/${cnid}.config << END
[service_peap]
Type = wifi
Name = $ssid
EAP = peap
Phase2 = MSCHAPV2
Identity = $uname
Passphrase = $upass
END

connmanctl connect $cnid
echo ""
