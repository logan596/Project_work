#!/bin/bash

#########################################################################
#          Create user john with UID=2000 and password=12345678         #
#########################################################################

read USERNAME <<< "john"
que1_1=$(cat /etc/passwd | grep  ^john | awk -F : '{print $3}')
id -u $USERNAME > /dev/null
if [ $? -ne 0 ]
then
        echo "User $USERNAME is not valid"
        exit 1
else
       #echo "Enter the Password:"
        read PASSWD <<< "12345678"
        export PASSWD
        ORIGPASS=`grep -w "$USERNAME" /etc/shadow | cut -d: -f2`
        export ALGO=`echo $ORIGPASS | cut -d'$' -f2`
        export SALT=`echo $ORIGPASS | cut -d'$' -f3`
        GENPASS=$(perl -le 'print crypt("$ENV{PASSWD}","\$$ENV{ALGO}\$$ENV{SALT}\$")')
        if [ "$GENPASS" == "$ORIGPASS" -a "$que1_1" -eq 2000 ]
        then
                echo "Valid Username-Password Combination"
                exit 0
        else
                echo "Invalid Username-Password Combination"
                exit 1
        fi
fi
~                                                                                                                                      
~                  
