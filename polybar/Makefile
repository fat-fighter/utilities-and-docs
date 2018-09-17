source_mappings=../dotfiles/polybar/mappings
source_config=../dotfiles/polybar/config.raw

dest_path=~/.config/polybar
dest_file_config=config

install:
	git clone https://aur.archlinux.org/polybar.git
	cd polybar; makepkg -Acs --noconfirm
	sudo pacman -U --noconfirm polybar/polybar*.tar.xz
	rm -rf polybar

config: ${source_config} ${source_mappings}
	config-parse ${source_config} ${source_mappings} > .out
	mkdir -p ${dest_path}
	mv .out ${dest_path}/${dest_file_config}
