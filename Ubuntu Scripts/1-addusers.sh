#!/bin/bash

echo -ne "\nLet's add some users!\n"
function prompt {
    while true
    do
        echo
        read -p "Username: " -r resp
        read -p "Add user: $resp ? [Yy/Nn]>>  " -r yn
        case $yn in
            [Yy]* ) adduser $resp;;
            [Nn]* ) ;;
            * ) echo -ne "Please enter Yes or No [Yy/Nn]\n"
        esac
    done
}
prompt