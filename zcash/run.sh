#!/bin/sh
zcashd -daemon
zcash-cli getinfo
while(( 1==1 ))
do
        sleep 3
        echo `zcash-cli listtransactions`>>/opt/zcash.log
done