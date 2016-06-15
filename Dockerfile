FROM ping2ravi/maven-build-docker

MAINTAINER Ravi Sharma

#Install Phantom JS

ENV PHANTOMJS_VERSION 2.1.1 

RUN  wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2; mkdir /opt/phantomjs; mv phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 /opt/phantomjs/.; cd /opt/phantomjs/; bzip2 -d phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar.bz2 ; tar -xvf phantomjs-${PHANTOMJS_VERSION}-linux-x86_64.tar; 

ENV PHANTOM_HOME /opt/phantomjs/phantomjs-${PHANTOMJS_VERSION}-linux-x86_64
ENV "phantomjs.binary.path" $PHANTOM_HOME 

