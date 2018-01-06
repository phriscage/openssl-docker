# openssl-docker
OpenSSL Docker container. Run OpenSSL binary in a Docker container. 

* [Setup](#setup)
* [Examples](#examples)
* [Development](#development)


## <a name="setup"></a>Setup:
Check the version via Docker run:

	docker run --rm -it phriscage/openssl:1.0.2n-r0 version

Create a Bash function or alias:

	openssl(){
        	docker run --rm -i \
                	--net host \
                	-v ${PWD}:${PWD} \
                	-w ${PWD} \
                	phriscage/openssl:1.0.2n-r0 "$@"
	}


## <a name="examples"></a>Examples:
Read a public x509 certificate (CTRL + D to exit):

	openssl s_client -connect google.com:443 | openssl x509 -text -noout


## <a name="development"></a>Development:
Specify the Alpine base image and OpenSSL Alpine package version via `make` arguments:

Run:

	ALPINE_VERSION=3.7 OPENSSL_VERSION=1.0.2n-r0 make run

Build:

	ALPINE_VERSION=3.7 OPENSSL_VERSION=1.0.2n-r0 make


## To-Do
* automated builds
