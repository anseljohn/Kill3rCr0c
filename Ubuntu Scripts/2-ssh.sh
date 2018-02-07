#!/bin/bash

if grep -Fxq "PermitRootLogin" < 1
then
	echo PermitRootLogin no > /etc/ssh/sshd_config
else
	sed -i 's/PermitRootLogin\ yes/PermitRootLogin\ no/' /etc/ssh/sshd_config
fi

sed -i 's/^Protocol 1 2/Protocol 2/' /etc/ssh/ssh_config
sed -i 's/PermitRootLogin\ prohibit-password/PermitRootLogin\ no/' /etc/ssh/sshd_config
sed -i 's/PermitRootLogin\ without_password/PermitRootLogin\ no/' /etc/ssh/sshd_config
sed -i 's/PermitEmptyPasswords\ yes/PermitEmptyPasswords\ no/' /etc/ssh/sshd_config
