#!/bin/bash

checkrunlevel=$(systemctl get-default)

if [ ${checkrunlevel} == "graphical.target" ]

then
        echo "Correct run level is assigned"
        exit 0
else
        echo "Wrong run level is aggigned"
        exit 1
fi

