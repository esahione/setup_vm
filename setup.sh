#! /bin/bash

DEBIAN_FRONTEND=noninteractive

sudo rm /etc/apt/apt.conf.d/*.*
sudo apt update
mkdir downloads
cd downloads
wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh -b
sudo ufw allow 8888/tcp
sudo apt -y install qtdeclarative5-dev qml-module-qtquick-controls
sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt update
cd ~/downloads/
wget https://developer.nvidia.com/compute/cuda/9.2/Prod2/local_installers/cuda_9.2.148_396.37_linux
wget https://developer.nvidia.com/compute/cuda/9.2/Prod2/patches/1/cuda_9.2.148.1_linux
