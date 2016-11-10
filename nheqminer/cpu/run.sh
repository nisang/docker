#!/bin/sh
while(( 1==1 ))
do
  sleep 3600
  nowtime=`date --date='0 days ago' "+%Y-%m-%d %H:%M:%S"`
  echo $nowtime
done
