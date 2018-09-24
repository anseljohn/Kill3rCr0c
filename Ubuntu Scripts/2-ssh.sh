#!/bin/bash

apt-get install -y --force-yes ssh
apt-get install -y --force-yes sshd

sed -i 's/PermitRootLogin\ yes/PermitRootLogin\ no/' /etc/ssh/sshd_config
sed -i 's/^Protocol 1/Protocol 2/' /etc/ssh/sshd_config
echo Protocol 2 >> /etc/ssh/ssh_config  
sed -i 's/PermitRootLogin\ prohibit-password/PermitRootLogin\ no/' /etc/ssh/sshd_config
sed -i 's/PermitRootLogin\ without_password/PermitRootLogin\ no/' /etc/ssh/sshd_config
sed -i 's/PermitEmptyPasswords\ yes/PermitEmptyPasswords\ no/' /etc/ssh/sshd_config
