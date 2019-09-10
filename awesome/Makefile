dst_path=~/.config/awesome

install:
	sudo pacman -S --noconfirm awesome

config: ${src_path}*
	rm -rf ${dst_path}
	git clone https://github.com/fat-fighter/awesome-config.git ${dst_path}
	git clone https://github.com/vicious-widgets/vicious.git ${dst_path}/vicious
