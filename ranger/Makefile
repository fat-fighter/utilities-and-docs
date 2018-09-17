source_config=../dotfiles/ranger/config
source_rifle_config=../dotfiles/ranger/rifle.conf

dest_path=${HOME}/.config/ranger

dest_name_config=rc.conf
dest_name_rifle_config=rifle.conf

install:
	git clone https://aur.archlinux.org/ranger-git.git
	cd ranger-git; makepkg -Acs --noconfirm
	sudo pacman -U --noconfirm ranger-git/ranger*.tar.xz
	rm -rf ranger-git

config: ${source_config} ${source_rconf_config}
	mkdir -p ${dest_path}
	rm -rf ${dest_path}/${dest_name_config}
	rm -rf ${dest_path}/${dest_name_rifle_config}

	ln ${source_config} ${dest_path}/${dest_name_config}
	ln ${source_rifle_config} ${dest_path}/${dest_name_rifle_config}
