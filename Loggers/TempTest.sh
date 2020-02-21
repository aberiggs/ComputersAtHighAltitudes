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

        CORE_0=$(sensors | grep 'Core 0' | awk '{print int($3)}')
        CORE_1=$(sensors | grep 'Core 1' | awk '{print int($3)}')

## ECHO VALUE

        echo "TIME: $NOW"
        echo "###########################" >> ${LOGFILE}
        echo "TIME: $NOW" >> ${LOGFILE}
        echo "CPU Core 0: ${CORE_0} C"
        echo "CPU Core 0: ${CORE_0} C" >> ${LOGFILE}
        echo "CPU Core 1: ${CORE_1} C"
        echo "CPU Core 1: ${CORE_1} C" >> ${LOGFILE}
