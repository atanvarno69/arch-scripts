#!/usr/bin/env sh

dir=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd -P)

pacman -S --needed -noconfirm micro shellcheck || exit 1

mkdir -p /etc/skel/.config/micro || exit 1
cp -f "${dir}/micro/settings.json" /etc/skel/.config/micro/ || exit 1

exit 0
