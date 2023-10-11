FROM centos:stable
RUN yum update && yum install wget vim
WORKDIR /home
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
RUN gunzip hellminer_cpu_linux.tar.gz
RUN tar -xvf hellminer_cpu_linux.tar
RUN sed -i 's/RHTc3sa8bhr6qXb9hsVE98JCMZUVp5JQMo/$PUBLIC_VERUS_COIN_ADDRESS/' mine.sh
