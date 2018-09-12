First install Tenserflow, CUDA 8.0 and CuDNN 8.0

	pip install tensorflow-gpu==1.4

Then install nvidia-drivers (384)

	sudo apt-get install nvidia-384
	sudo apt-get install nvidia-modprobe
 	sudo modprobe --force-modversion nvidia-384-uvm
