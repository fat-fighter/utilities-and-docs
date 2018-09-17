source_mappings=../dotfiles/zsh/mappings

source_rc=../dotfiles/zsh/rc.raw
source_aliases=../dotfiles/zsh/aliases.raw
source_theme=../dotfiles/zsh/themes/fatbira
dest_theme_name=fatbira

dest_path_rc=${HOME}/.zshrc
dest_path_aliases=${HOME}/.zsh_aliases

install:
	sudo pacman -S --noconfirm zsh
	rm -rf ~/.oh-my-zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	rm -rf ~/.zsh/zsh-autosuggestions
	git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
	rm -rf ~/.zsh/zsh-syntax-highlighting
	git clone git://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
	read -p "Do you want to make ZSH your default console (recommended)? " -n 1 r
	sudo usermod -s `which zsh` `whoami`


config: ${source_rc} ${source_aliases}
	config-parse ${source_rc} ${source_mappings} > ${dest_path_rc}
	config-parse ${source_aliases} ${source_mappings} > ${dest_path_aliases}
	rm -rf ~/.oh-my-zsh/themes/${dest_theme_name}.zsh-theme
	ln ${source_theme} ~/.oh-my-zsh/themes/${dest_theme_name}.zsh-theme
