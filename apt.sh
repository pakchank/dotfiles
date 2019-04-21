#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

sudo apt install libssl-dev libxml2-dev libcurl4-openssl-dev libmariadbclient-dev g++ build-essential liblapack-dev libopenblas-dev libgsl-dev gfortran

# Install mysql
sudo apt install mysql-server
sudo mysql_secure_installation

# Install R and Rstudio
sudo apt install r-base
sudo apt-get install libopenblas-base r-base
sudo apt-get install gdebi
cd ~/Downloads
wget https://download1.rstudio.org/rstudio-xenial-1.1.419-amd64.deb
sudo gdebi rstudio-xenial-1.1.379-amd64.deb

# Install Anaconda
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh
bash Anaconda3-2019.03-Linux-x86_64.sh
source ~/.bashrc
