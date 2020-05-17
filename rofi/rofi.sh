#!/bin/sh

mkdir -p "$HOME/.config/rofi"
ln -s -T "$(pwd)/config.rasi" "$HOME/.config/rofi/config.rasi"
ln -s -T "$(pwd)/slate.rasi" "$HOME/.config/rofi/slate.rasi"


