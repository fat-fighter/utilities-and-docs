source_quickmarks=../dotfiles/qutebrowser/quickmarks
source_config=../dotfiles/qutebrowser/config.py

source_greasemonkey=../dotfiles/qutebrowser/greasemonkey

config_dest_path=~/.config/qutebrowser
local_dest_path=~/.local/share/qutebrowser

install:
	sudo pacman -S --noconfirm qutebrowser

config: ${source_config} ${source_quickmarks}
	mkdir -p ${config_dest_path}
	cp ${source_quickmarks} ${config_dest_path}/
	cp ${source_config} ${config_dest_path}/
	
	mkdir -p ${local_dest_path}
	cp -r ${source_greasemonkey} ${local_dest_path}
