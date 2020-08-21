FROM alpine:latest
MAINTAINER Alireza Amouzadeh "<alireza@amouzadeh.net>"
RUN mkdir -p /stunnel/conf && apk update && apk add --update tar build-base gcc abuild binutils binutils-doc gcc-doc openssl-dev
ENV version 5.57b6
ADD http://www.usenix.org.uk/mirrors/stunnel/beta/stunnel-${version}.tar.gz /stunnel/stunnel-${version}.tar.gz
WORKDIR /stunnel
RUN tar -xvf /stunnel/stunnel-${version}.tar.gz
WORKDIR /stunnel/stunnel-5.57
RUN ./configure && make && make install
ENTRYPOINT ["/usr/local/bin/stunnel", "/stunnel/conf/stunnel.conf"]
