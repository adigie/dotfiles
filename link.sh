#!/usr/bin/env bash

ROOT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

rm ~/.vimrc
ln -s $ROOT_DIR/.vimrc ~/.vimrc

rm ~/.config/i3
ln -s $ROOT_DIR/.config/i3 ~/.config/i3

rm ~/.config/i3status
ln -s $ROOT_DIR/.config/i3status ~/.config/i3status

