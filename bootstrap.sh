#!/bin/bash

# commands run on initial setup

sudo apt -y update
sudo apt upgrade -y -qq

git config --global user.name "Michael Greene"
git config --global user.email "profmikegreene@gmail.com"
git config --global pull.rebase true

sudo apt install curl zsh powerline fonts-powerline unzip -y -qq
sudo apt install -y powerline-doc zsh-doc

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

curl -sLO https://raw.githubusercontent.com/ogham/exa/master/contrib/completions.zsh
chsh -s $(which zsh)

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker pi

sudo pip3 -v install docker-compose

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
