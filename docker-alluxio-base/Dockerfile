FROM anapsix/alpine-java:jdk7


RUN apk add --no-cache --update supervisor sudo wget && \
    wget http://alluxio.org/downloads/files/1.0.1/alluxio-1.0.1-bin.tar.gz -O /alluxio.tar.gz && \
    tar xvzf /alluxio.tar.gz && \
    rm -rf /alluxio.tar.gz

RUN sudo mkdir /dev/ram
RUN rm -rf /alluxio-1.0.1/conf
ADD conf /alluxio-1.0.1/conf
ADD supervisord-*.conf /
ADD start.sh /


CMD ["/start.sh"]
