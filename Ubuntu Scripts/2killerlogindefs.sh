#!/bin/bash

sed -i -e 's/PASS_MAX_DAYS/ c\PASS_MAX_DAYS  90' /etc/login.defs
sed -i -e 's/PASS_MIN_DAYS/ c\PASS_MIN_DAYS  10' /etc/login.defs
sed -i -e 's/PASS_WARN_AGE/ c\PASS_WARN_AGE  7' /etc/login.defs
