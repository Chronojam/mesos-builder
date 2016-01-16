[![Docker Repository on Quay](https://quay.io/repository/chronojam/mesos-builder/status "Docker Repository on Quay")](https://quay.io/repository/chronojam/mesos-builder)

Mesos Builder
=

This repository contains the container definition  with all the dependencies to build mesos:

Usage
-

Start by cloning the repository:

    git clone https://github.com/chronojam/mesos-builder

Then run , mounting the bin output directory


    docker run -d -v /mesosbin:/mesosbin quay.io/chronojam/mesos-builder /build/build-mesos.sh 0.26.0

You can run it with:  

    $] docker run -d -v /mesosbin:/mesosbin quay.io/chronojam/mesos-builder ./build-mesos.sh 0.26.0

