#!/bin/bash

#Just an ordinary firewall script!

########## START OF SCRIPT #########
apt-get install gufw
ufw enable
ufw deny incoming
ufw allow outgoing
ufw logging on high