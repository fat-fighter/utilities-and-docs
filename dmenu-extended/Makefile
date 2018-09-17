source_mappings=../dotfiles/dmenu-extended/mappings
source_config=../dotfiles/dmenu-extended/config.raw
source_theme=../dotfiles/rofi/fatmenu.rasi

dest_path_config=~/.config/dmenu-extended/config
dest_path_theme=~/.config/rofi

dest_file_config=dmenuExtended_preferences.txt
dest_file_theme=fatmenu.rasi

install:
	git clone https://aur.archlinux.org/dmenu-extended-git.git
	cd dmenu-extended-git; makepkg -Acs --noconfirm
	sudo pacman -U --noconfirm dmenu-extended-git/dmenu*.tar.xz
	rm -rf dmenu-extended-git
	sudo pacman -S --noconfirm rofi

config:
	mkdir -p ${dest_path_config}
	config-parse ${source_config} ${source_mappings} > ${dest_path_config}/${dest_file_config}
	mkdir -p ${dest_path_theme}
	cp ${source_theme} ${dest_path_theme}/${dest_file_theme}
