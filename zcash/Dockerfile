FROM debian:jessie


RUN echo "">/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/debian jessie main">>/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/debian jessie-updates main">>/etc/apt/sources.list && echo "deb http://security.debian.org jessie/updates main">>/etc/apt/sources.list
WORKDIR /opt
RUN apt-get update && apt-get install -y build-essential pkg-config libgtest-dev libc6-dev m4 g++-multilib autoconf libtool ncurses-dev unzip git python zlib1g-dev wget bsdmainutils && wget -q https://github.com/zcash/zcash/archive/v1.0.0.zip

RUN unzip -o v1.0.0.zip
WORKDIR /opt/zcash-1.0.0
RUN ./zcutil/fetch-params.sh && ./zcutil/build.sh -j4
RUN mkdir ~/.zcash && touch ~/.zcash/zcash.conf
#COPY zcash.conf ~/.zcash/zcash.conf
RUN echo "">~/.zcash/zcash.conf \
	echo "testnet=1">>~/.zcash/zcash.conf \
	echo "addnode=alphatestnet.z.cash">>~/.zcash/zcash.conf \
	echo "rpcuser=nidandan8980">>~/.zcash/zcash.conf \
	echo "rpcpassword=_U5gTg1LAyLD">>~/.zcash/zcash.conf \
	echo "gen=1">>~/.zcash/zcash.conf
CMD ./src/zcashd -daemon
# ./src/zcash-cli  stop 
# ./src/zcash-cli getinfo
