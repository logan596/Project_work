#!/bin/bash

##############################################################################################################
#  Create a new user “bob”. Give bob, not in the rhce group,but bob has read and write access to /home/rhce. #
##############################################################################################################
SETPERM=$(getfacl -p /home/rhce/ | grep bob | awk -F : '{print $3}')
read USERNAME <<< "bob"
que1_1=$(cat /etc/passwd | grep  ^bob | awk -F : '{print $3}')
id -u $USERNAME > /dev/null
if [ $? -ne 0 ]
then
        #echo "User $USERNAME is not valid"
        break
else
        if [ ${SETPERM} == "rwx" ] #Checking for RWX permission
	
	then
                echo "20" >> "/tmp/marks.txt"
                break
       else
                break
        fi
fi


