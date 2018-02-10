#!/bin/bash

apt-get install rkhunter -y --force-yes
rkhunter -c --sk | more
rkhunter --propupd
apt-get install libpam-cracklib -y --force-yes
apt-get install debsums -yes --force-yes
apt-get install --reinstall $(dpkg-query -S $(sudo debsums -c 2>&1 | sed -e "s/.*file \(.*\) (.*/\1/g") | cut -d: -f1 | sort -u)
apt-get install chkrootkit -y --force-yes
chkrootkit | more