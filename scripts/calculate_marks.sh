#!/bin/bash

###########################################################################
#          For calculating marks of all questions   from /tmp/marks.txt   #
###########################################################################


SUM=0; for i in `cat /tmp/marks.txt`; do SUM=$(($SUM + $i)); done; echo $SUM

