#!/bin/sh
zcashd -daemon
zcash-cli getinfo
while(( 1==1 ))
do
        sleep 3600
	nowtime=`date --date='0 days ago' "+%Y-%m-%d %H:%M:%S"`
	echo "<h2>">>/var/www/html/zcash.html
	echo $nowtime>>/var/www/html/zcash.html
        echo `zcash-cli listtransactions`>>/var/www/html/zcash.html
	echo "</h2>">>/var/www/html/zcash.html
	echo -e "\n">>/var/www/html/zcash.html
	echo "<br>">>/var/www/html/zcash.html
done
