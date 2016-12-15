#!/bin/bash

checkhost=$(hostname)

if [ ${checkhost} == "mycentos.example.com" ]

then
	echo "Correct hostname is assigned"
	exit 0
else
	echo "Wrong hostname is aggigned"
	exit 1
fi
