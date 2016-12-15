#!/bin/bash

##################################################################################
#   Allow davis (and only davis) to get full access to john‘s home directory.    #
##################################################################################
SETPERM=$(getfacl -p /home/john/ | grep davis | awk -F : '{print $3}')

if [ ${SETPERM} == "rwx" ]
then
	echo "Permission is CORRECT"
	echo "25" >> /tmp/marks.txt
	exit 0
else
	exit 1
fi



