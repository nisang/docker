FROM debian:jessie


RUN echo "">/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/debian jessie main">>/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/debian jessie-updates main">>/etc/apt/sources.list && echo "deb http://security.debian.org jessie/updates main">>/etc/apt/sources.list
WORKDIR /opt
RUN apt-get update && apt-get install -y build-essential pkg-config libgtest-dev libc6-dev m4 g++-multilib autoconf libtool ncurses-dev unzip git python zlib1g-dev wget bsdmainutils && wget -q -O zcash.zip https://github.com/zcash/zcash/archive/v1.0.1.zip

RUN unzip -o zcash.zip
WORKDIR /opt/zcash
RUN ./zcutil/fetch-params.sh && ./zcutil/build.sh -j4
RUN mkdir ~/.zcash && touch ~/.zcash/zcash.conf
COPY zcash.conf ~/.zcash/zcash.conf
#RUN echo "">/root/.zcash/zcash.conf && echo "testnet=1">>/root/.zcash/zcash.conf && echo "addnode=alphatestnet.z.cash">>/root/.zcash/zcash.conf && echo "rpcuser=nidandan8980">>/root/.zcash/zcash.conf && echo "rpcpassword=_U5gTg1LAyLD">>/root/.zcash/zcash.conf && echo "gen=1">>/root/.zcash/zcash.conf

RUN ln -s /opt/zcash-1.0.0/src/zcash-cli /bin/zcash-cli && ln -s /opt/zcash-1.0.0/src/zcashd /bin/zcashd
RUN rm -rf /bin/sh && ln -s /bin/bash /bin/sh
COPY run.sh /opt/run.sh
RUN chmod +x /opt/run.sh
WORKDIR /opt
CMD ./run.sh
# zcashd -daemon
# zcash-cli  stop
# zcash-cli setgenerate true
# zcash-cli getinfo
# zcash-cli listtransactions
