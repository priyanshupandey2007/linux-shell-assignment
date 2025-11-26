#Script Name: monitor.sh
#Purpose: To log CPU and Memory usage every 5 seconds
#Author: Priyanshu pandey
#Date: 17-11-2025

LOGFILE=/home/priyanshu/system_log.txt

echo Monitoring started... Logging into $LOGFILE

while true
do
    echo ------ $(date) ------ >> $LOGFILE
    echo CPU Usage: >> $LOGFILE
    top -bn1 grep Cpu(s) >> $LOGFILE

    echo Memory Usage: >> $LOGFILE
    free -h >> $LOGFILE

    echo ---------------------------- >> $LOGFILE
    sleep 5
done
