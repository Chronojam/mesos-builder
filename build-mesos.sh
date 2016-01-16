#!/bin/bash

cd /usr/local/src
wget http://mirror.vorboss.net/apache/mesos/0.26.0/mesos-0.26.0.tar.gz
tar -zxf mesos-0.26.0.tar.gz
mkdir -p /usr/local/mesos-0.26.0/build
cd /usr/local/src/mesos-0.26.0/build
../configure --disable-java
make -j 4 V=0

ln -s /usr/local/mesos-0.26.0/build /mesosbin
