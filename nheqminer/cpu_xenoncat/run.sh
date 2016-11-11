#!/bin/sh
#cd /opt/nheqminer/Linux_cmake/nheqminer_cpu_xenoncat
#./nheqminer_cpu_xenoncat -l cn1-zcash.flypool.org:3333 -u $TADDR.$WORKNAME -t $THREADNUM
while(( 1==1 ))
do
  sleep 3600
  nowtime=`date --date='0 days ago' "+%Y-%m-%d %H:%M:%S"`
  echo $nowtime
done
