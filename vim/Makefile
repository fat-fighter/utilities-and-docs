source_mappings=../dotfiles/vim/mappings
source_rc=../dotfiles/vim/rc.raw

source_path_theme=../dotfiles/vim/colors/fatdark
source_path_airline_theme=../dotfiles/vim/airline-colors/fatair

dest_path_vim_rc=${HOME}/.vimrc

dest_path_theme=${HOME}/.vim/colors
dest_path_airline_theme=${HOME}/.vim/bundle/vim-airline-themes/autoload/airline/themes

dest_name_theme=fatdark.vim
dest_name_airline_theme=fatair.vim

install:
	sudo pacman -S --noconfirm

config:
	mkdir -p ~/.config/nvim
	config-parse ${source_rc} ${source_mappings} > ${dest_path_vim_rc}
	mkdir -p ~/.vim/bundle
	rm -rf ~/.vim/bundle/Vundle.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
	mkdir -p ${dest_path_theme}
	rm -rf ${dest_path_theme}/${dest_name_theme}
	ln ${source_path_theme} ${dest_path_theme}/${dest_name_theme}
	mkdir -p ${dest_path_airline_theme}
	rm -rf ${dest_path_airline_theme}/${dest_name_airline_theme}
	ln ${source_path_airline_theme} ${dest_path_airline_theme}/${dest_name_airline_theme}
