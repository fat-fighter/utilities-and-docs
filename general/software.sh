#!/usr/bin/bash

software=(
	w3m
	exa
	feh
	wget
	term
	file
	unzip
	atool
	screen
	evince
	poppler
	nitrogen
	nautilus
	xdg-utils
	highlight
	git:light
	mediainfo
	pavucontrol
	git:dropbox
	git:lazygit
	lxappearance
	arc-gtk-theme
	gnome-screenshot
	xf86-input-libinput
)

function pg {
	git clone https://aur.archlinux.org/$1.git
	cd $1
	makepkg -Acs --noconfirm
	if ls $1*.tar.xz 1> /dev/null 2>&1; then
		sudo pacman -U --noconfirm $1*.tar.xz
		cd ../
		rm -rf $1
	else
		echo "There was some error in downloading the package: $1"
		cd ../
	fi
}

for sw in ${software[@]}; do
	if [[ `echo $sw | cut -d':' -f1` == "git" ]]; then
		pg `echo $sw | cut -d':' -f2`
	else
		sudo pacman -S --noconfirm $sw
	fi
done
