###############################################################################
##  Name:   Dockerfile
##  Date:   2018-01-02
##  Developer:  Chris Page
##  Email:  phriscage@gmail.com
##  Purpose:   This Dockerfile contains the OpenSSL executable on Alpine
################################################################################
ARG ALPINE_VERSION
FROM alpine:$ALPINE_VERSION

# Set the file maintainer (your name - the file's author)
MAINTAINER Chris Page <phriscage@gmail.com>

# Install Openssl
ARG OPENSSL_VERSION
RUN apk update && \
	apk add --no-cache openssl=$OPENSSL_VERSION

# Cleanup
RUN rm -rf /var/cache/apk/*

ENTRYPOINT ["openssl"]
