#!/usr/bin/env bash

ROOT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

rm ~/.vimrc
ln -s $ROOT_DIR/.vimrc ~/.vimrc

rm ~/.config/i3
ln -s $ROOT_DIR/.config/i3 ~/.config/i3

rm ~/.config/i3status
ln -s $ROOT_DIR/.config/i3status ~/.config/i3status

rm ~/.fehbg
ln -s $ROOT_DIR/.fehbg ~/.fehbg

rm ~/.config/systemd/user/feh.timer
ln -s $ROOT_DIR/.config/systemd/user/feh.timer ~/.config/systemd/user/feh.timer

rm ~/.config/systemd/user/feh.service
ln -s $ROOT_DIR/.config/systemd/user/feh.service ~/.config/systemd/user/feh.service

systemctl --user daemon-reload
systemctl --user enable feh.timer
systemctl --user start feh.timer

