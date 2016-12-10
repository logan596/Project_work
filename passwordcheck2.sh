#!/bin/bash

###################################################################################################
#  Create user davis with UID=3000 pasword=87654321 and it will expires in one month i.e 30 days  #
###################################################################################################

EXP=`date -d "30 days" +"%b-%d-%Y"`
ACC_EXP=`chage -l davis | grep ^Account | awk -F : '{print $2}' | sed 's/\ //' | sed 's/\,//g' |sed 's/\ /-/g'`

read USERNAME <<< "davis"
que1_1=$(cat /etc/passwd | grep  ^davis | awk -F : '{print $3}')
id -u $USERNAME > /dev/null
if [ $? -ne 0 ]
then
        echo "User $USERNAME is not valid"
        exit 1
else
       #echo "Enter the Password:"
        read PASSWD <<< "87654321"
        export PASSWD
        ORIGPASS=`grep -w "$USERNAME" /etc/shadow | cut -d: -f2`
        export ALGO=`echo $ORIGPASS | cut -d'$' -f2`
        export SALT=`echo $ORIGPASS | cut -d'$' -f3`
        GENPASS=$(perl -le 'print crypt("$ENV{PASSWD}","\$$ENV{ALGO}\$$ENV{SALT}\$")')
        if [ "$GENPASS" == "$ORIGPASS" ] && [ "$que1_1" -eq "3000" ]  && [ "${EXP}" == "${ACC_EXP}" ]
        then
                echo "Valid Username-Password Combination"
                exit 0
        else
                echo "Invalid Username-Password Combination"
                exit 1
        fi
fi

