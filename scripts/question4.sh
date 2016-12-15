#!/bin/bash

############################################################################################
#   Create a cron job running as root, starting at 11PM every day and writing              #
#   a report on daily system resource consumption in the /var/log/consumption.log file.    #
############################################################################################

# 00 23 * * * /usr/bin/sar  > /var/log/consumption.log


#Global parameters:
EVERYDAY=$(crontab -l | sed -n 's/00 23/00_23/p' | awk '{print $1}')
CMD_CHECK=$(crontab -l | sed -n '/00 23/p' | awk '{print $6}')
#Check if job runs everyday @11 or not.

if [ "${EVERYDAY}" = 00_23 ]
 then 
	echo "CORRECT"
	echo "10" >> /tmp/marks.txt
else
	echo "WRONG"
fi

#Check for Command i.e updatedb or not

if [ "${CMD_CHECK}" = updatedb ]
 then 	
	echo "CORRECT"
	echo "15" >> /tmp/marks.txt

else
	echo "WRONG"

fi

