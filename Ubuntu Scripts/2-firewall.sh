#!/bin/bash

ufw enable
ufw default deny incoming
ufw default allow outgoing
ufw logging on high