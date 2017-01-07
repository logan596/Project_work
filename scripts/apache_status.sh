#!/bin/bash

wget -a testapache.log http://localhost

diff -s index.html /var/www/html/index.html > apachstat.txt
grep -o "identical" apachstat.txt > grep_match.txt
abc=$(cat grep_match.txt)
if [ ${abc} == "identical" ]

then
        echo "Apache is correcly configured"
        exit 0
else
        echo "Apache is not configured properly"
        exit 1
fi
~                                                                                 
~                                                                                 
~       
