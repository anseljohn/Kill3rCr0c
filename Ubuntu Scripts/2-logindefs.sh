#!/bin/bash

#Replace PASS_MIN/MAX_DAYS line with x 90 and x 10
sed -i '/PASS_MAX_DAYS/c\PASS_MAX_DAYS  90' /etc/login.defs
sed -i '/PASS_MIN_DAYS/c\PASS_MIN_DAYS  10' /etc/login.defs

#Recomment the commented PASS_MIN/MAX_DAYS
sed -i '/PASS_MAX_DAYS/{s/.*/#&/;:A;n;bA}' /etc/login.defs
sed -i '/PASS_MIN_DAYS/{s/.*/#&/;:A;n;bA}' /etc/login.defs
