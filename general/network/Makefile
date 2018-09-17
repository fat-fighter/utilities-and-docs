install:
	sudo pacman -S --noconfirm networkmanager network-manager-applet nm-connection-editor wireless_tools gnome-keyring wpa_supplicant
	sudo systemctl stop dhcpcd.service
	sudo gpasswd -a `whoami` network
	sudo bash set-links-down.sh
	sudo systemctl start wpa_supplicant.service
	sudo systemctl start NetworkManager.service

config:
	sudo systemctl enable NetworkManager.service
	sudo systemctl enable wpa_supplicant.service
	sudo systemctl disable dhcpcd.service
