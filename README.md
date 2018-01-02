# openssl-docker
OpenSSL Docker container

## Run
Run OpenSSL binary in a Docker container

	docker run --rm --it phriscage/openssl:1.0.2n-r0 version

## Development
Specify the Alpine base image and OpenSSL Alpine package version via `make` arguments:

* Run:
	ALPINE_VERSION=3.7 OPENSSL_VERSION=1.0.2n-r0 make run

* Build:
	ALPINE_VERSION=3.7 OPENSSL_VERSION=1.0.2n-r0 make

## To-DO
* automated builds
