# # !/bin/bash

l=$(grep "^UID_MIN" /etc/login.defs)
l1=$(grep "^UID_MAX" /etc/login.defs)

users=$(awk -F':' -v "min=${l##UID_MIN}" -v "max=${l1##UID_MAX}" '{ if ( $3 >= min && $3 <= max ) print $1}' /etc/passwd)
set -f
userArray=(${users// /})

# check to see if user is a valid user, if not, remove
for name in "${userArray[@]}"; do
  isValid=false;
  doIFS=$"\n"
  set -f
  for $validName in $(cat < "users.txt"); do
    if [$name = $validName]; then
      isValid=true
    fi
  done
  if [isValid = false]; then
    userdel $name
  fi
done

#check to see if valid user exists, if not, add
doIFS=$"\n"
set -f
for $validName in $(cat < "users.txt"); do
  isExisting=false
  for name in "${userArray[@]}"; do
    if [$validName = $name]; then
      isExisting=true;
    fi
  done
  if [isExisting = false]; then
    useradd newuser; echo -e "passwdofuser\npasswdofuser" | passwd newuser
  fi
done


# function add {
#   while true
#   do
#       echo
#       read -p "Username: " -r resp
#       read -p "Add user: $resp ? [Yy/Nn]>>  " -r yn
#       case $yn in
#           [Yy]* ) 
#             adduser --force-badname $resp
#             echo -ne "\n*\n*\n*\nUser \"$resp\" has been added\n"
#             ;;
#           [Nn]* ) ;;
#           * ) 
#             echo -ne "Please enter Yes or No [Yy/Nn]\n"
#             add
#             ;;
#       esac
#   done
# }

# function prompt {
#   read -p "Remove or add users? [Rr/Aa]  " -r ra
#   case $ra in
#     [Rr]* ) rem;;
#     [Aa]* ) add;;
#   esac
# }
# prompt

