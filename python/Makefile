conda_path=${HOME}/software

install:
	sudo pacman -S --noconfirm python python-pip
	sudo pacman -S --noconfirm python2 python2-pip
	curl https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh -o install.sh
	mkdir -p ${conda_path}
	sh install.sh -p ${conda_path}/conda 
	rm install.sh
	sudo ln ${conda_path}/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh
