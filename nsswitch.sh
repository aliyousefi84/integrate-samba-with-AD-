#!/bin/bash
if [ $EUID -ne 0  ];
then 
	echo "ERROR : this script should run as root"
	exit 1
else:
	sed -i "s/winbind//g" /etc/nsswitch &&  sed -i "s/systemd/winbind/g" /etc/nsswitch && sed -i "s/sss//g" /etc/nsswitch 
fi

