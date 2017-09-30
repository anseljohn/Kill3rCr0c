#!/bin/bash

# idk man, just a lot of permission conf

########## START OF SCRIPT ##########

#SSH
sed -i 's/PermitRootLogin\ yes/PermitRootLogin\ no/' /etc/ssh/sshd_config
sed -i 's/PermitRootLogin\ without_password/PermitRootLogin\ no/' /etc/ssh/sshd_config
sed -i 's/PermitEmptyPasswords\ yes/PermitEMptyPasswords\ no/' etc/ssh/sshd_config

#lightdm
#> /etc/lightdm/lightdm.conf  <<< WHAT DOES THIS DO NATHAN?!
echo [SeatDefaults] >> lightdm.conf
echo allow-guest=false >> lightdm.conf

#