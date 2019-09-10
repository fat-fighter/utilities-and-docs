source_config=../dotfiles/termite/config.raw

dest_path=${HOME}/.config/
dest_config=config

install:
	sudo pacman -S --no-confirm termite

config: ${source_config} ${source_rconf_config}
	mkdir -p ${dest_path}
	rm -rf ${dest_path}/${dest_config}

	ln ${source_config} ${dest_path}/${dest_config}
