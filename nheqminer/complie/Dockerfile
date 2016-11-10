FROM ubuntu:16.04

#RUN echo "">/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse">>/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse">>/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse">>/etc/apt/sources.list && echo "deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse">>/etc/apt/sources.list

RUN apt-get update && apt-get install -y cmake git build-essential libboost-all-dev wget

WORKDIR /opt
