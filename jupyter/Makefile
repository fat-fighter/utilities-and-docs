dest_dir=${HOME}/.jupyter/custom

source_config=../dotfiles/jupyter/config.raw
source_css=../dotfiles/jupyter/css.raw
source_mappings=../dotfiles/jupyter/mappings

install:
	pip2 install --user jupyter

config:
	mkdir -p ${dest_dir}
	config-parse ${source_config} ${source_mappings} > ${dest_dir}/jupyter_notebook_config.py
	config-parse ${source_css} ${source_mappings} > ${dest_dir}/custom.css
