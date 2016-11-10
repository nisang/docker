FROM ubuntu:16.04

#RUN echo "">/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse">>/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse">>/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse">>/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse">>/etc/apt/sources.list

RUN apt-get update && apt-get install -y cmake  build-essential libboost-all-dev git wget

WORKDIR /opt

RUN git clone -b Linux https://github.com/nicehash/nheqminer.git
#RUN wget -q -O nheqminer.tar.gz http://23.83.228.127/weex/nheqminer.tar.gz && tar -zxvf nheqminer.tar.gz

WORKDIR /opt/nheqminer/cpu_xenoncat/Linux/asm

RUN sh assemble.sh

WORKDIR /opt/nheqminer/Linux_cmake/nheqminer_cpu
RUN cmake . && make -j $(nproc)
RUN ln -s /opt/nheqminer/Linux_cmake/nheqminer_cpu/nheqminer_cpu /bin/nheqminer

WORKDIR /opt
COPY run.sh /opt/run.sh
RUN chmod +x /opt/run.sh
#COPY docker-entrypoint.sh /usr/local/bin/
#RUN ln -s /usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
RUN rm -rf /bin/sh && ln -s /bin/bash /bin/sh
#ENTRYPOINT ["docker-entrypoint.sh"]
CMD ./run.sh

