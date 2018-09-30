source_config=../dotfiles/jupyter/config.raw
source_scss=../dotfiles/jupyter/scss.raw
source_nb=../dotfiles/jupyter/nb-extensions.raw
source_mappings=../dotfiles/jupyter/mappings

dest_path_config=${HOME}/.jupyter/jupyter_notebook_config.py
dest_path_css=${HOME}/.jupyter/custom/custom.css
dest_path_nb=${HOME}/.jupyter/nbconfig/notebook.json
dest_dirs=${HOME}/.jupyter/nbconfig

install:
	pip2 install --user jupyter jupyter_contrib_nbextensions

config:
	mkdir -p ${dest_dirs}
	config-parse ${source_scss} ${source_mappings} | sass - ${dest_path_css}
	config-parse ${source_config} ${source_mappings} > ${dest_path_config}
	config-parse ${source_nb} ${source_mappings} > ${dest_path_nb}
