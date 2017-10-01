#!/bin/bash

sed -i '/\[pam_unix.so]/a remember=5' /etc/pam.d/common-password
sed -i '/\[pam_unix.so]/a minlen=8' /etc/pam.d/common-password
sed -i '/\[pam_cracklib.so]/a ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1' /etc/pam.d/common-password
