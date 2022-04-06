#!/usr/bin/env sh

dir=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd -P)

pacman -S --needed --noconfirm zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting || exit 1

rm -f /etc/skel/.bash_logout || exit 1
rm -f /etc/skel/.bash_profile || exit 1
rm -f /etc/skel/.bashrc || exit 1

sed -i 's|/bin/bash|/usr/bin/zsh|' /etc/default/useradd || exit 1
sed -i 's|/bin/bash|/usr/bin/zsh|' /etc/passwd || exit 1

cp -f "${dir}/zsh/etc/zsh/zprofile" /etc/zsh/zprofile || exit 1
cp -f "${dir}/zsh/etc/zsh/zshenv" /etc/zsh/zshenv || exit 1
cp -fr "${dir}/zsh/etc/zsh/zdotdir" /etc/zsh/ || exit 1

mkdir -p /etc/skel/.cache/zsh || exit 1
mkdir -p /etc/skel/.local/share/zsh || exit 1
mkdir -p /etc/skel/.config || exit 1

cp -fr "${dir}/zsh/etc/skel/.config/zsh" /etc/skel/.config/ || exit 1

exit 0
