#!/usr/bin/bash

software=(
	git:google-chrome
	git:dropbox
	git:light
	fzf
	w3m
	wget
	unzip
	screen
	file
	highlight
	mediainfo
	nitrogen
	poppler
	pavucontrol
	lxappearance
	arc-gtk-theme
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
	echo $sw
	if [[ `echo $sw | cut -d':' -f1` == "git" ]]; then
		echo $sw | cut -d':' -f2
		pg `echo $sw | cut -d':' -f2`
	else
		echo $sw
		#sudo pacman -S --noconfirm $sw
	fi
done
