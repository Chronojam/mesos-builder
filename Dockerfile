FROM centos:7

RUN yum install -y tar wget git
RUN wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
RUN yum install -y epel-release

RUN yum update systemd
RUN yum groupinstall -y "Development Tools"
RUN yum install -y apache-maven python-devel java-1.8.0-openjdk-devel zlib-devel libcurl-devel openssl-devel cyrus-sasl-devel cyrus-sasl-md5 apr-devel subversion-devel apr-util-devel

ENV JAVA_HOME /usr/lib/jvm/
RUN mkdir -p /build

ADD build-mesos.sh /build

ENTRYPOINT ["/build/build-mesos.sh"]
