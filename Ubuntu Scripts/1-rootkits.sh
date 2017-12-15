#!/bin/bash

apt-get install rkhunter -y --force-yes
rkhunter -c --sk
apt-get install libpam-cracklib -y --force-yes
apt-get install debsums -yes --force-yes
debsums
debsums -a -sk
apt-get install chkrootkit -y --force-yes
chkrootkit