#!/bin/bash

apt-get install libpam-cracklib -y --force-yes
echo "auth optional pam_tally2.so deny=4 onerr=fail unlock_time=900 audit even_deny_root_root_account silent" >> /etc/pam.d/common-auth
