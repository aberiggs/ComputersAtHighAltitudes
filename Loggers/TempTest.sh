#!/bin/bash


## FEW VARIABLES ########################

NOW=$(date +"%d-%m-%Y-%T")

LOGFILE="/var/log/sensor_temp.log"


## THRESHOLDFOR NOTIFICATIONS ##
## UPON THE SENSORS COMMAND OUTPUT ##
## WARNING=HIGH 
## CRITICAL=CRIT

HIGH="60"
CRIT="100"

## IF HELO SET TO 0 ##
EHLO="1"

#######################################

## CHECK IF SENSOR IS PRESENT

        hash sensors 2>/dev/null || { echo >&2 "It requires sensor but it's not installed.  Aborting now."; exit 1; }

## READ CPU TEMP ##

        CPU_0=$(vcgencmd measure_temp)

## ECHO VALUE

        echo "TIME: $NOW"
        echo "###########################" >> ${LOGFILE}
        echo "TIME: $NOW" >> ${LOGFILE}
        echo "CPU: ${CPU_0} C"
        echo "CPU: ${CPU_0} C" >> ${LOGFILE}
