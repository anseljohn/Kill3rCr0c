#!/bin/bash

sed -i -e 's/PASS_MAX_DAYS  99999/PASS_MAX_DAYS  90/g' /etc/login.defs
sed -i -e 's/PASS_MIN_DAYS  0/PASS_MIN_DAYS  10/g' /etc/login.defs