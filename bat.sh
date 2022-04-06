#!/usr/bin/env sh

pacman -S --needed --noconfirm bat || exit 1
BAT_CONFIG_PATH="/etc/skel/.config/bat/config" bat --generate-config-file || exit 1

exit 0
