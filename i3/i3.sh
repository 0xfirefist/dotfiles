#!/bin/sh

# make directory
mkdir -p "$HOME/.config/i3"

# adding config files
if [ -f "$HOME/.config/i3/config" ]; then
   rm "$HOME/.config/i3/config"
fi

ln -s -T "$(pwd)/config" "$HOME/.config/i3/config"

