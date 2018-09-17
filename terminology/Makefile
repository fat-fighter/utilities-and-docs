source_config=../dotfiles/terminology/config

dest_path=~/.config/terminology/config/standard
dest_file_config=base.cfg

source_path_themes=../dotfiles/themes

install:
	sudo pacman -S --noconfirm terminology

config: ${source_config}
	mkdir -p ${dest_path}
	cp ${source_config} ${dest_path}/${dest_file_config}
	cd ${source_path_themes}; make; sudo make install; make clean
