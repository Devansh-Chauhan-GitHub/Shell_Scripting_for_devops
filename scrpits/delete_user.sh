#!/bin/bash
read -p "Enter the username to be deleted : " username
sudo userdel -f $username
echo "USER DELETED"
