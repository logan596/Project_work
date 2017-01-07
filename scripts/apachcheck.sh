#!/bin/bash

wget -a testapache.log http://localhost/test.html

diff -s test.html /var/www/html/test.html > apachstat.txt
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
