FROM ubuntu:16.04

RUN echo "">/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse">>/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse">>/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse">>/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse">>/etc/apt/sources.list


RUN apt-get update && apt-get install -y vim git wget

WORKDIR /opt

#RUN wget -q -O cuda-repo-ubuntu1604_8.0.44-1_amd64.deb  http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.44-1_amd64.deb
RUN wget -q -O cuda-repo-ubuntu1604_8.0.44-1_amd64.deb http://23.83.228.127/weex/cuda-repo-ubuntu1604_8.0.44-1_amd64.deb
RUN dpkg -i cuda-repo-ubuntu1604_8.0.44-1_amd64.deb

RUN apt-get update && apt-get install -y --allow-unauthenticated cuda cuda-toolkit-8-0 cmake build-essential libboost-all-dev
RUN git clone -b Linux https://github.com/nicehash/nheqminer.git

# RUN cd nheqminer/Linux_cmake/nheqminer_cuda_tromp && cmake . && make -j $(nproc)
RUN cd nheqminer/Linux_cmake/nheqminer_cuda_tromp && cmake COMPUTE=50 . && make
