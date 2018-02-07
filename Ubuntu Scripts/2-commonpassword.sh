#!/bin/bash

sed -i '/pam_unix.so/s/$/ remember=5/' /etc/pam.d/common-password
sed -i '/pam_unix.so/s/$/ minlen=8/' /etc/pam.d/common-password

if grep -Fxq "pam_cracklib.so" /etc/pam.d/common-password == 0
then
  sed -i '/pam_cracklib.so/s/$/ retry=3 minlen=8 difok=3 reject_username minclass=3 maxrepeat=2 ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1/' /etc/pam.d/common-password
else
  apt-get install libpam-cracklib -y --force-yes
  sed -i '/pam_cracklib.so/s/$/ ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1/' /etc/pam.d/common-password
fi

sed -i /'pam_unix.so'
echo "password requisite pam_pwhistory.so use_authtok remember=24 enforce_for_root" >> /etc/pam.d/common-password
