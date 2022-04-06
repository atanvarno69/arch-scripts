#!/usr/bin/env sh

pacman -S --needed --noconfirm dash || exit 1
cd /usr/bin || exit 1
ln -sf dash sh || exit 1

exit 0
