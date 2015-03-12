FROM ubuntu:trusty
COPY sources.list /etc/apt/sources.list
RUN apt-get update && apt-get -y install wget build-essential zlib1g-dev libncurses5-dev  && apt-get clean
RUN mkdir /work && cd /work && wget http://downloads.sourceforge.net/project/samtools/samtools/1.2/samtools-1.2.tar.bz2 && tar jxvf samtools-1.2.tar.bz2 && cd samtools-1.2 && make && make test && make install && make clean && cd / && rm -rf /work
