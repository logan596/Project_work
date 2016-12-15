#!/bin/bash

###################################################################################
#   Setup a /home/rhce directory to facilitate collaboration among the rhce group.#
#   Each member should be able to create files and modify each others’ files,     #
#   but should not be able to delete any one else’s files in this directory.      #
###################################################################################

FIRST_CHECK=$(getfacl -p /rhce/ | grep group  | head -1 | awk '{print $3}')
SECOND_CHECK=$(getfacl -p /rhce/ | grep group | tail -1 | awk -F "::" '{print $2}')

#First check for group exeist or not
if [ ${FIRST_CHECK} == "redhat" -a  ${SECOND_CHECK} == "rwx" ]

then
       	echo "Permission is CORRECT"
	echo "25" >> /tmp/marks.txt
       	exit 0
   
     
else
        exit 1
fi

