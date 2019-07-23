install:
	mkdir -p ~/.fonts
	cp -r fonts/* ~/.fonts
	git clone https://aur.archlinux.org/siji-git.git
	cd siji-git; makepkg -Acs --noconfirm
	sudo pacman -U --noconfirm siji-git/siji*.tar.xz
	rm -rf siji-git
	git clone https://aur.archlinux.org/ttf-iosevka.git
	cd ttf-iosevka; makepkg -Acs --noconfirm
	sudo pacman -U --noconfirm ttf-iosevka/ttf-iosevka*.tar.xz
	rm -rf ttf-iosevka
	sudo pacman -S --noconfirm xorg-fonts-misc xorg-xfd
	fc-cache -fv
	sudo install -t /usr/bin ascii2art
