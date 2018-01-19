#!/bin/sh
############################################
#script name: netstat_moniter
#privilege: root
#descript: use to moniter the connection status
############################################
while [ true ]
do
	echo '****************************************************'
	netstat -anop | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" |grep -v 0.0.0.0 |grep -v ':::'
	echo ''
	echo ''
sleep 0.5
done