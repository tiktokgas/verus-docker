FROM centos:stable
RUN yum update && yum install wget vim
WORKDIR /home
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN gunzip hellminer_cpu_linux.tar.gz
RUN tar -xvf hellminer_cpu_linux.tar
RUN sed -i 's/REr15Siw62MSeXu4HjgiPnQhTUYf5WQNXC/$PUBLIC_VERUS_COIN_ADDRESS/' mine.sh
