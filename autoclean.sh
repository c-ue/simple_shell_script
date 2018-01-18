#################################
#autoclean.sh
#create for 20180119 CDX contest
#please give me root privileges
#################################
while [ true ]
do
	kill $(netstat -anop | grep -P '\d+\.\d+\.\d+\.\d+' \
	| awk '{print $5 " " $7}'\
	|grep -v "0.0.0.0:" \
	|grep -v "10.211.55.2:" \
	|awk '{print $2}' |grep -oP '\d+')
	echo '[' $(date) ']:clean'
	sleep 0.1
done
