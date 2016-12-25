#!/bin/bash

##########################################################
#       Change the hostname to mycentos.example.com      #
##########################################################

checkhost=$(hostname)

if [ ${checkhost} == "mycentos.example.com" ]

then
	echo "Correct hostname is assigned"
	exit 0
	echo "15" >> /tmp/marks.txt
else
	exit 1
fi
