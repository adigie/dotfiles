#!/usr/bin/env bash

ROOT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

rm -f ~/.vimrc
ln -s $ROOT_DIR/.vimrc ~/.vimrc

rm -rf ~/.config/i3
ln -s $ROOT_DIR/.config/i3 ~/.config/i3

rm -rf ~/.config/i3status
ln -s $ROOT_DIR/.config/i3status ~/.config/i3status

rm -rf ~/.config/dunst
ln -s $ROOT_DIR/.config/dunst ~/.config/dunst

rm -f ~/.config/pulse/daemon.conf
mkdir -p ~/.config/pulse
ln -s $ROOT_DIR/.config/pulse/daemon.conf ~/.config/pulse/daemon.conf

systemctl --user daemon-reload

