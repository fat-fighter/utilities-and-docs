source_mappings=../dotfiles/i3/mappings
source_config=../dotfiles/i3/config.raw

dest_path=~/.config/i3
dest_file_config=config
dest_file_launch=launch

all: ${source_config} ${source_mappings}
	config-parse ${source_config} ${source_mappings} > .out

install: .out
	mkdir -p ${dest_path}
	rm -rf ${dest_path}/${dest_file_config}
	mv .out ${dest_path}/${dest_file_config}
	
	rm -rf ${dest_path}/${dest_file_launch}
	ln launch ${dest_path}/${dest_file_launch}
