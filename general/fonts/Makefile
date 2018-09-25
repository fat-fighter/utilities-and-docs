install:
	mkdir -p ~/.fonts
	cp -r fonts/* ~/.fonts
	fc-cache -fv
	git clone https://aur.archlinux.org/siji-git.git
	cd siji-git; makepkg -Acs --noconfirm
	sudo pacman -U --noconfirm siji-git/siji*.tar.xz
	rm -rf siji-git
	sudo pacman -S xorg-fonts-misc xorg-xfd
