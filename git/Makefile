source_config=../dotfiles/git/config.raw
source_mappings=../dotfiles/git/mappings

dest_config=~/.gitconfig

install:
	sudo pacman -S --noconfirm git

config: ${source_config}
	config-parse ${source_config} ${source_mappings} > ${dest_config}
	ln ../.gitignore ~/
