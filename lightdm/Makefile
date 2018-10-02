source_config=../dotfiles/lightdm/config
source_webkit_config=../dotfiles/lightdm/webkit-config

install:
	sudo pacman -S --noconfirm lightdm lightdm-webkit2-greeter lightdm-webkit-theme-litarvan

config:
	sudo cp ${source_config} /etc/lightdm/lightdm.conf
	sudo cp ${source_webkit_config} /etc/lightdm/lightdm-webkit2-greeter.conf
