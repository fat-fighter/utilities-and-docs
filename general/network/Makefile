install:
	git clone https://aur.archlinux.org/connman-gtk.git
	cd connman-gtk; makepkg -Acs --noconfirm
	sudo pacman -U --noconfirm connman-gtk/connman-gtk*.tar.xz
	rm -rf connman-gtk
	sudo pacman -S --noconfirm connman wireless_tools wpa_supplicant
	sudo systemctl stop dhcpcd.service
	sudo gpasswd -a `whoami` network
	sudo bash set-links-down.sh
	sudo systemctl start wpa_supplicant.service
	sudo systemctl start connman.service
	sudo install -t /usr/bin connman-wpa2e
	sudo install -t /usr/bin connman-monitor

config:
	sudo systemctl enable connman.service
	sudo systemctl enable wpa_supplicant.service
	sudo systemctl disable dhcpcd.service
