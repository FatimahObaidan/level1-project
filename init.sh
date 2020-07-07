#!/bin/bash
sudo apt install cloud-init

docker pull alpine
sudo curl -L get.docker.com | sh
sudo usermod -aG docker $USER
sudo apt install vim
sudo apt install docker-compose
sudo apt install make
sudo apt install curl

git clone https://github.com/FatimahObaidan/level1-project.git

cd level1-project
make build
make up
