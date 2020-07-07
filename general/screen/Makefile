install:
	sudo install -t /usr/bin/ switch-monitor
	sudo install -t /etc/udev/rules.d/ backlight.rules
	sudo usermod -aG video `whoami`

	nvidia-settings --assign CurrentMetaMode="DP-4:1920x1080_60 +0+0 { ForceFullCompositionPipeline = On }, DVI-I-1:1920x1080_60 +1920+0 { ForceFullCompositionPipeline = On }"
