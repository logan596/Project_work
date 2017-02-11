#!/bin/bash

#############################################################################################################################
#  Set up a job to delete all of the regular files in the /home/bob directory on the second day of every month at 8:30 A.M. #
#############################################################################################################################


#Global parameters:
EVERYDAY=$(crontab -l | sed -n 's/30 08 2/30_08_2/p' | awk '{print $1}')
CMD_CHECK=$(crontab -l | sed -n '/30 08 2/p' | awk '{print $6$7$8}')
#Check if job runs everyday @8:30 or not.

if [ "${EVERYDAY}" = 30_08_2 ]
 then
        echo "10" >> /tmp/marks.txt
else
        break
fi

#Check for Command i.e updatedb or not

if [ "${CMD_CHECK}" =  "rm-rf/home/bob" ]
 then
        echo "10" >> /tmp/marks.txt

else
       break 

fi


