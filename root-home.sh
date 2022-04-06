#!/usr/bin/env sh

mv -f /root /home/ || exit 1
sed -i 's|/root|/home/root|' /etc/passwd || exit 1

exit 0
