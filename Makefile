install:
	cd python; make install
	sudo install -t /usr/bin/ config-parse
	cd zsh; make install; make config
	cd ranger; make install; make config
	cd polybar; make install; make config
	cd i3; make install; make config
	cd vim; make install; make config
	cd terminology; make install; make config
	cd ssh; make config
	cd matplotlib; make install; make config
	cd git; make install; make config
	cd jupyter; make install; make config
	cd compton; make install; make config
	cd dmenu-extended; make install; make config
	cd fzf; make install
	bash software
	cd general/bluetooth; make install; make config
	cd general/sound; make install; make config
	cd general/network; make install; make config
	cd general/icons; make install
	cd general/fonts; make install
	cd general/cursors; make install
	cd general/gtk; make config
	cd general/screen; make install
	bash paths
