#!/bin/sh
#################################
#script name: autoclean.sh
#privilege: root
#descript: kill all the connection without the target you agreement
#################################
while [ true ]
do
        kill -9  $(netstat -anop  | grep -E "([0-9]{1,3}[\.]){3}[0-9]{1,3}" \
        | awk '{print $5 " " $7}'\
        |grep -v "0.0.0.0:" \
        |grep -v "127.0.0.1:" \
        |grep -v "10.20.30.11:" \ 						#replace with the ip you agreement
        |awk '{print $2}' |grep -oE "[0-9]{1,10}/" |grep -oE "[0-9]{1,10}")
        echo '[' $(date) ']:clean'
        sleep 0.1
done
