source_config=../dotfiles/terminology/config

dest_path=~/.config/terminology/config/standard
dest_file_config=base.cfg

source_path_themes=../dotfiles/terminology/themes

install:
	sudo pacman -S --noconfirm terminology

config:
	mkdir -p ${dest_path}
	cp ${source_config} ${dest_path}/${dest_file_config}
	cd ${source_path_themes}; make; make install; make clean
