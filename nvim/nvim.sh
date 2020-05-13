#!/bin/sh

# installing vim plug
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
          https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# moving config files
mkdir -p "$HOME/.config/nvim"
ln -s -T "$(pwd)/init.vim" "$HOME/.config/nvim/init.vim"

echo "run :PlugInstall in nvim"
