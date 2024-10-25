#!/bin/bash
read -p "Enter the username : " username
sudo useradd -m $username
echo "User ADDED"
