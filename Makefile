SHELL := /bin/bash

default: build

build: 
	echo "Building ALPINE_VERSION=${ALPINE_VERSION} and OPENSSL_VERSION=${OPENSSL_VERSION}...";
	docker build --build-arg ALPINE_VERSION=${ALPINE_VERSION} --build-arg OPENSSL_VERSION=${OPENSSL_VERSION} -t phriscage/openssl:${OPENSSL_VERSION} .;

run: build

	docker run --rm -it phriscage/openssl:${OPENSSL_VERSION} version
