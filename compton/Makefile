source_mappings=../dotfiles/compton/mappings
source_config=../dotfiles/compton/config.raw

dest_path=~/.config/compton
dest_file_config=config

install:
	sudo pacman -S --noconfirm compton

config: ${source_config} ${source_mappings}
	config-parse ${source_config} ${source_mappings} > .out
	mkdir -p ${dest_path}
	mv .out ${dest_path}/${dest_file_config}
