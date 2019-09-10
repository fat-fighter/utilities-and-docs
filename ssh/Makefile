source_config=../dotfiles/ssh/config
dest_path=${HOME}/.ssh
dest_file=config

config:
	mkdir -p ${dest_path}
	rm -rf ${dest_path}/${dest_file}
	ln ${source_config} ${dest_path}/${dest_file}
