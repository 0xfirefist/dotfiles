#!/bin/sh

# zsh, curl, wget, git
sudo apt-get update && sudo apt install -y zsh curl wget git colorls

# installing motivate
git clone https://github.com/mubaris/motivate.git
sudo ./motivate/motivate/install.sh
rm -rf ./motivate
