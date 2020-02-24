#!/bin/bash

LOGFILE="home/rpi/Desktop/Data/"

## IF HELO SET TO 0 ##
EHLO="1"

## CHECK IF SENSOR IS PRESENT
        hash sensors 2>/dev/null || { echo >&2 "It requires sensor but it's not installed.  Aborting now."; exit 1; }

for i in {1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 19 19 20}
do
        NOW=$(date +"%d-%m-%Y-%T")
		## READ CPU TEMP ##
                CPU_0=$(vcgencmd measure_temp)

        ## ECHO VALUES 
                echo "TIME: $NOW"
                echo "###########################" >> ${LOGFILE}
                echo "TIME: $NOW" >> ${LOGFILE}
                echo "CPU: ${CPU_0}"
                echo "CPU: ${CPU_0}" >> ${LOGFILE}
				
                sleep 5
done
