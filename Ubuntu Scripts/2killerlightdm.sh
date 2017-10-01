#!/bin/bash

> /etc/lightdm/lightdm.conf
echo [SeatDefaults] >> /etc/lightdm/lightdm.conf
echo allow-guest=false >> /etc/lightdm/lightdm.conf