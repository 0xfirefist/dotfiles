#!/bin/sh

if [ -d $HOME/.config/tilix/schemes ]; then
   rm -rf $HOME/.config/tilix/schemes
fi

# create directory
mkdir -p $HOME/.config/tilix

ln -s -T "$(pwd)/schemes" "$HOME/.config/tilix/schemes"

dconf load /com/gexperts/Tilix/ < tilix.conf
