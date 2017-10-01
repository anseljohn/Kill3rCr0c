#!/bin/bash

ufw enable
ufw disable incoming
ufw enable incoming
ufw logging on high