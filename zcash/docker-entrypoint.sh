#!/bin/bash
echo "addnode=mainnet.z.cash">/root/.zcash/zcash.conf
echo "rpcuser=$rpcuser">>/root/.zcash/zcash.conf
echo "rpcpassword=$rpcpassword">>/root/.zcash/zcash.conf
echo "gen=1">>/root/.zcash/zcash.conf
echo "genproclimit=2">>/root/.zcash/zcash.conf
echo "equihashsolver=tromp">>/root/.zcash/zcash.conf

exec "$@"
