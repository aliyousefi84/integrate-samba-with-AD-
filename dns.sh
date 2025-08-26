#!/bin/bash 
if [ $EUID -ne 0  ];
then
	echo "ERROR : you should run this script as root"
	exit 1
else
	read -p "enter your AD server address : " ip
	read -p "enter your fqdn name : " fqdn
	echo -e  "127.0.0.1 $fqdn\n127.0.1.1 $fqdn\n$ip $fqdn" > /etc/hosts
	echo "$fqdn" > /etc/hostname
fi

