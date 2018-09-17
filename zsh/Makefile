source_mappings=../dotfiles/zsh/mappings

source_rc=../dotfiles/zsh/rc.raw
source_aliases=../dotfiles/zsh/aliases.raw

dest_path_rc=${HOME}/.zshrc
dest_path_aliases=${HOME}/.zsh_aliases

install:
	sudo pacman -S --noconfirm zsh
	rm -rf ~/.oh-my-zsh
	sh -c "$(curl -isSL https://raw.githubusercontent.com/robbyrussel/oh-my-zsh/master/tools/install.sh)"
	rm -rf ~/.zsh/zsh-autosuggestions
	git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
	rm -rf ~/.zsh/zsh-syntax-highlighting
	git clone git://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
	read -p "Do you want to make ZSH your default console (recommended)? " -n 1 r
	if [[ ${REPLY} =~ ^[Yy]$ ]]; then
		sudo usermod -s `which zsh` `whoami`
	fi


config: ${source_rc} ${source_aliases}
	config-parse ${source_rc} ${source_mappings} > ${dest_path_rc}
	config-parse ${source_aliases} ${source_mappings} > ${dest_path_rc}
