source_config=../dotfiles/matplotlib/rc

dest_path=~/.config/matplotlib
dest_file=matplotlibrc

install:
	pip install --user matplotlib

config:
	mkdir -p ${dest_path}
	cp ${source_config} ${dest_path}/${dest_file}
