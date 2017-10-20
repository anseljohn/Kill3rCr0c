# #!/bin/bash

# sed -i '/pam_unix.so/s/$/ remember=5/' /etc/pam.d/common-password
# sed -i '/pam_unix.so/s/$/ minlen=8/' /etc/pam.d/common-password

# if grep -Fxq "pam_cracklib.so" /etc/pam.d/common-password == 0
# then
#   sed -i '/pam_cracklib.so/s/$/ ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1/' /etc/pam.d/common-password
# else
#   echo "ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1" >> /etc/pam.d/common-password
# fi