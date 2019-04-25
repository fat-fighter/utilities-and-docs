conda_path=${HOME}/software/conda

install:
	sudo pacman -S --noconfirm python python-pip
	sudo pacman -S --noconfirm python2 python2-pip
	curl https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh -o install.sh
	mkdir -p ${conda_path}
	sh install,sh -p ${conda_path} 
	rm install.sh
	sudo ln ${conda_path}/etc/profile.d/conda.sh /etc/profile.d/conda.sh
