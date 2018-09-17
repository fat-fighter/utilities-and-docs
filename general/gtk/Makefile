source_mappings=../../dotfiles/gtk/mappings
source_config=../../dotfiles/gtk/config.raw
source_css=../../dotfiles/gtk/css.raw

dest_path=~/.config/gtk-3.0
dest_file_config=settings.ini
dest_file_css=gtk.css

config:
	mkdir -p ${dest_path}
	config-parse ${source_config} ${source_mappings} > ${dest_path}/${dest_file_config}
	config-parse ${source_css} ${source_mappings} > ${dest_path}/${dest_file_css}
