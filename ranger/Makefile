source_config=../dotfiles/ranger/config
source_rifle_config=../dotfiles/ranger/rifle.conf

dest_path=${HOME}/.config/ranger

dest_name_config=rc.conf
dest_name_rifle_config=rifle.conf

plugins_path=${dest_path}/plugins

install:
	git clone https://aur.archlinux.org/ranger-git.git
	cd ranger-git; sed -i 's/python setup/python2 setup/g' PKGBUILD; makepkg -Acs --noconfirm
	sudo pacman -U --noconfirm ranger-git/ranger*.tar.xz
	rm -rf ranger-git
	sudo sed -i 's/#\!\/bin\/python -O/#!\/bin\/python2/g' /usr/bin/ranger
	mkdir -p ${plugins_path}
	git clone https://github.com/alexanderjeurissen/ranger_devicons.git devicons
	cd devicons; make install
	rm -rf devicons

config: ${source_config} ${source_rconf_config}
	mkdir -p ${dest_path}
	rm -rf ${dest_path}/${dest_name_config}
	rm -rf ${dest_path}/${dest_name_rifle_config}

	ln ${source_config} ${dest_path}/${dest_name_config}
	ln ${source_rifle_config} ${dest_path}/${dest_name_rifle_config}
