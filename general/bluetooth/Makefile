install:
	sudo pacman -S pulseaudio-bluetooth blueman
	sudo systemctl start bluetooth.service

config:
	cat /etc/pulse/default.pa | sed 's/\(.* module-suspend-on-idle\)/# \1/g' > temp
	echo "" >> temp
	echo "### Automatically switch to new sink connection" >> temp
	echo "load-module module-switch-on-connect" >> temp
	sudo mv temp /etc/pulse/default.pa
	sudo systemctl enable bluetooth.service
	killall -q pulseaudio
