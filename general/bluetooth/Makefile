install:
	sudo pacman -S --noconfirm pulseaudio-bluetooth blueman
	sudo systemctl start bluetooth.service
	sudo install -t /usr/bin bluez-monitor

config:
	cat /etc/pulse/default.pa | sed 's/\(.* module-suspend-on-idle\)/# \1/g' > temp
	echo "" >> temp
	echo "### Automatically switch to new sink connection" >> temp
	echo "load-module module-switch-on-connect" >> temp
	sudo mv temp /etc/pulse/default.pa
	sudo systemctl enable bluetooth.service
	sudo cp policy-rule /etc/polkit-1/rules.d/network.rules
