#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

sudo apt install libssl-dev libxml2-dev libcurl4-openssl-dev libmariadbclient-dev g++ build-essential liblapack-dev libopenblas-dev libgsl-dev gfortran zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

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

# Install powerline
pip install --user powerline-status
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

ln -s -f ~/dotfiles/vimrc ~/.vim/vimrc
ln -s -f ~/dotfiles/.zshrc ~/.zshrc
