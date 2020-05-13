#!/bin/sh

# make polybar directory
mkdir -p "$HOME/.config/polybar/"

# move config file
if [ -f "$HOME/.config/polybar/config" ]; then
   rm "$HOME/.config/polybar/config"
fi
ln -s -T "$(pwd)/config" "$HOME/.config/polybar/config"
