#!/bin/bash
EXP=`date -d "30 days" +"%b-%d-%Y"`
ACC_EXP=`chage -l davis | grep ^Account | awk -F : '{print $2}' | sed 's/\ //' | sed 's/\,//g' |sed 's/\ /-/g'`

echo $EXP
echo $ACC_EXP
