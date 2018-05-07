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

#rm ~/.fehbg
#ln -s $ROOT_DIR/.fehbg ~/.fehbg
#
#rm ~/.config/systemd/user/feh.timer
#ln -s $ROOT_DIR/.config/systemd/user/feh.timer ~/.config/systemd/user/feh.timer
#
#rm ~/.config/systemd/user/feh.service
#ln -s $ROOT_DIR/.config/systemd/user/feh.service ~/.config/systemd/user/feh.service
#
#systemctl --user daemon-reload
#systemctl --user enable feh.timer
#systemctl --user start feh.timer

