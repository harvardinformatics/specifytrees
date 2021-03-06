#!/bin/bash 

# shell script to capture start and end times of Java routines on spasa1 - amc 11/14/16

TODAY=`date +'%m-%d-%y'`

# Define a timestamp function
timestamp() {
  date +"%T"
}

echo Java Routine began $TODAY `timestamp` >> /root/cron-log-end-times/java_routine_log.txt

/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.181-3.b13.el7_5.x86_64/jre/bin/java -jar /opt/specifytrees/NodeNumberer.jar /opt/specifytrees/nodenumberer.properties geography taxon storage 
>> /root/cron-log-end-times/java_routine_log.txt

echo Java Routine ended $TODAY `timestamp` >> /root/cron-log-end-times/java_routine_log.txt

