#!/bin/bash

# calls scripts from toolkit -- uncomment what you want to use

# chmod 777 1killernc.sh
# ./1killernc.sh

# chmod 777 1killerbrowsers
# ./1killerbrowsers

# chmod 777 1killerrootkits.sh
# ./1killerrootkits.sh

# chmod 777 1killergufw.sh
# ./1killergufw.sh

# chmod 777 1killerbum.sh
# ./1killerbum.sh

# chmod 777 1killerauditd.sh
# ./1killerauditd.sh

# chmod 777 2killerfirewall.sh
# ./2killerfirewall.sh

# chmod 777 2killerssh.sh
# ./2killerssh.sh

# chmod 777 2killerlightdm.sh
# ./2killerligthdm.sh

# chmod 777 2killerpasswd.sh
# ./2killerpasswd.sh

# chmod 777 2killerlogindefs.sh
# ./2killerlogindefs.sh

# chmod 777 2killercommonauth.sh
# ./2killercommonauth.sh

apt-get update
apt-get upgrade
apt-get autoclean
apt-get autoremove