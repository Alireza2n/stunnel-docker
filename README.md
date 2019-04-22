# Stunnel docker image
Stunnel TLS wrapper for Docker using latest stunnel and OpenSSL

## What is stunnel?
[Stunnel](https://www.stunnel.org/) is a proxy designed to add TLS encryption functionality to existing clients and servers without any changes in the programs' code.

## What is included?
* Uses latest alpine-linux.
* Uses OpenSSL 1.1.1a  20 Nov 2018 (latest version available from alpine-linux).
* Downloads and compiles latest stable or beta version of stunnel.

## Why did I create this image?
I wanted an stunnel imgae to work on all different linux versions and distributions while having access to latest
developments including TLSv1.3 in both stunnel and openSSL.

## How to use?
1. Pull stunnel image:
```
$ docker pull alireza2n/stunnel:latest
```
2. Create your stunnel configuration and certificate and put them in an directory. This directory will be bound to container's
/stunnel/conf directory.

**NOTE:** Always add ```foreground = yes``` to your stunnel config! otherwise the stunnel will go to background of the container.

3. Run the container:
```
$ docker run -v /home/alireza/stunnel-docker/conf:/stunnel/conf -p <port_on_host>:<port_on_container> alireza2n/stunnel:latest
```
