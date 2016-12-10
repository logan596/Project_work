#!/bin/bash

que1_1=$(cat /etc/passwd | grep  ^john | awk -F : '{print $3}')

echo $que1_1

if [ $que1_1 -eq 2000 ]; then
	echo "Answer is correct"
else 
	echo "WRONG ANSWER"
fi

que1_2=$(cat /etc/passwd | grep  ^john | awk -F : '{print $4}')

echo $que1_2

if [ $que1_2 -eq 2000 ]; then
        echo "Answer is correct"
else
        echo "WRONG ANSWER"
fi

que1_3=$(cat /etc/passwd | grep  ^davis | awk -F : '{print $3}')

echo $que1_3

if [ $que1_3 -eq 3000 ]; then
        echo "Answer is correct"
else
        echo "WRONG ANSWER"
fi

que1_4=$(cat /etc/passwd | grep  ^davis | awk -F : '{print $4}')

echo $que1_4

if [ $que1_4 -eq 3000 ]; then
        echo "Answer is correct"
else
        echo "WRONG ANSWER"
fi




