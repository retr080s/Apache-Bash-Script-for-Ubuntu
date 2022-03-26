#!/bin/bash
#Installing Apache
apt-get update
apt-get install apache2 -y

#Adjusting Firewall
ufw app list
ufw allow 'Apache'
ufw status

#Checking your Web Server
systemctl status apache2

#Showing UID
echo -e "\e[1;32m PID and other stats for apache (grabs the data from ps aux)\e[0m"
ps aux | grep apache2

#Showing the ip of your Web Server
echo -e "\e[1;32m This is the ip address of your Web Server\e[0m"
ip addr show eth0 | grep "inet\b"
ip addr show enp0s3 | grep "inet\b"

#Help
echo -e "To turn off the Web Server type in your Terminal '\e[1;31msystemctl stop apache2\e[0m' , to turn it back on type '\e[1;32msystemctl start apache2\e[0m', to check the status type '\e[1;36msystemctl status apache2\e[0m'."