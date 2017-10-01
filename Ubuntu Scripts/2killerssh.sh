#!/bin/bash

sed -i 's/PermitRootLogin\ yes/PermitRootLogin\ no/' /etc/ssh/sshd_config
sed -i 's/PermitRootLogin\ prohibit-password/PermitRootLogin\ no/' /etc/ssh/sshd_config
sed -i 's/PermitRootLogin\ without_password/PermitRootLogin\ no/' /etc/ssh/sshd_config
sed -i 's/PermitEmptyPasswords\ yes/PermitEmptyPasswords\ no/' /etc/ssh/sshd_config
