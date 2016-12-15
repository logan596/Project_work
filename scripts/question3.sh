#!/bin/bash

##########################################################################################     
# Create a directory named /common. Allow john and davis to share documents in the       #
#/common directory using a group called team. Both of them can read, write and remove    #
# documents from the other in this  directory but any user not member of the group can’t.#                                                
##########################################################################################


SETPERM=$(getfacl -p /common | grep team | awk -F : '{print $3}')

if [ ${SETPERM} == "rwx" ]
then
	echo "Permission is CORRECT"
	echo "25" >> /tmp/marks.txt
	exit 0
else
	exit 1
fi


