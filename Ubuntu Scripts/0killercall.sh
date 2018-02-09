#!/bin/bash

# calls scripts from toolkit -- uncomment what you want to use




#####################################################
##                                                 ##
##               CHECK KILLERREMOVER               ##
##                                                 ##
#####################################################




#TESTED
# chmod 777 1-remover.sh
# ./1-remover.sh

#TESTED
# chmod 777 1-browsers
# ./1-browsers

#TESTED
# chmod 777 1-rootkits.sh
# ./1-rootkits.sh

#TESTED
# chmod 777 1-gufw.sh
# ./1-gufw.sh

#TESTED
# chmod 777 1-bum.sh
# ./1-bum.sh

#TESTED
# chmod 777 1-auditd.sh
# ./1-auditd.sh

#TESTED
# chmod 777 1-addusers.sh
# ./1-addusers.sh

#TESTED
# chmod 777 2-firewall.sh
# ./2-firewall.sh

#NOT TESTED
# chmod 777 2-ssh.sh
# ./2-ssh.sh

#TESTED
# chmod 777 2-ftp.sh
# ./2-ftp.sh

#TESTED
# chmod 777 2-lightdm.sh
# ./2-ligthdm.sh

#TESTED
# chmod 777 2-ipv4warding.sh
# ./2-ipv4warding.sh


# chmod 777 2-commonpassword.sh
# ./2-commonpassword.sh

#TESTED
# chmod 777 2-logindefs.sh
# ./2-logindefs.sh

# chmod 777 2-commonauth.sh
# ./2-commonauth.sh

#TESTED
# chmod 777 3-changepasswords.sh
# ./3-changepasswords.sh

#TESTED
# chmod 777 3-rootpass.sh
# ./3-rootpass.sh



apt-get update -y --force-yes
apt-get upgrade -y --force-yes
apt-get autoclean -y --force-yes
apt-get autoremove -y --force-yes
apt-get update -y --force-yes
apt-get upgrade -y --force-yes
