#!/bin/bash

ufw enable
ufw default deny incoming
ufw default allow incoming
ufw logging on high