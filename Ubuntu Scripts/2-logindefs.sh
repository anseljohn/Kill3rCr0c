#!/bin/bash

sed -i '/PASS_MAX_DAYS/c\PASS_MAX_DAYS  90' /etc/login.defs
sed -i '/PASS_MIN_DAYS/c\PASS_MIN_DAYS  10' /etc/login.defs

sed -i '/PASS_MAX_DAYS/{s/.*/#&/;:A;n;bA}' /etc/login.defs
sed -i '/PASS_MIN_DAYS/{s/.*/#&/;:A;n;bA}' /etc/login.defs
