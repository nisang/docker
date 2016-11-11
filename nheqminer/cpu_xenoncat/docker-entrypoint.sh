#!/bin/sh
nheqminer -l cn1-zcash.flypool.org:3333 -u $TADDR.$WORKNAME -t $THREADNUM

exec "$@"
