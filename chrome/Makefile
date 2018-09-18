desktop_file=google-chrome.desktop

install:
	git clone https://aur.archlinux.org/google-chrome.git
	cd polybar; makepkg -Acs --noconfirm
	sudo pacman -U --noconfirm google-chrome/google-chrome*.tar.xz
	rm -rf google-chrome

config:
	 xdg-mime default ${desktop_file} x-scheme-handler/http
	 xdg-mime default ${desktop_file} x-scheme-handler/https
