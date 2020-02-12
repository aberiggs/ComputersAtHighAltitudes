
TEMPERATURE_THRESHOLD=53
LOG='/tmp/cpu_temperature_alert.log'

RESULTS=$( sensors | grep Core | awk '{print substr($3,2,2)}' | \
    while read num;
    do
        if [ $num -gt $TEMPERATURE_THRESHOLD ];
        then
            MESSAGE="CPU temperature at $num degrees"
            DISPLAY=:0 notify-send "Overheating" "$MESSAGE"
            echo "$MESSAGE"
            break
        fi;
    done;
    )

# Logging.
echo -n "$(date -u +'%F %T')Z" >> $LOG
echo -n " $(whoami)">> $LOG
echo -n " $?" >> $LOG
echo -n " $RESULTS" >> $LOG
echo "" >> $LOG
