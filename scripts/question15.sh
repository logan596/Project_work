#!/bin/bash

EXP=`date -d "7 days" +"%b-%d-%Y"`
ACC_EXP=`chage -l bob | grep ^Account | awk -F : '{print $2}' | sed 's/\ //' | sed 's/\,//g' |sed 's/\ /-/g'`

        
if [ "${EXP}" == "${ACC_EXP}" ]  #checking both EXP date.
        then
                echo "15" >> /tmp/marks.txt
                break
        else
                break
        fi


