#!/bin/bash

userfile= root/userlist
username=$(cat /root/userlist | tr 'A-Z' 'a-z')
password=$username@123
for user in $username
do
useradd $username
echo $password | passwd --stdin $username
done
echo "$(wc -l /root/userlist) user have been created"
tail -n$(wc -l /root/userlist) /etc/passwd
