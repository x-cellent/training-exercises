# Exercise: docker registry

## Run own Registry:

1. Run the (`registry docker run -p 5000:5000 registry`)

2. Push the image to the registry

3. delete the local image

4. Verify that it is deleted

5. run / pull the image

## Tasks for base images (optional)

- compare Pull speed
- compare size
- start it and install something

base images:

- centos
- debian
- alpine
- busybox

## Solution

### Run own Registry

1. `docker run -d -p 5000:5000 registry`

2. `docker push localhost:5000/local-registry/your-image:1.0`

3. `docker rmi localhost:5000/local-registry/your-image`

4. `docker images`

5. `docker pull localhost:5000/local-registry/your-image:1.0`  
    `docker run localhost:5000/local-registry/your-image:1.0`

6. `curl -X GET http://localhost:5000/v2/_catalog`
   `curl -X GET http://localhost:5000/v2/local-registry/whalesay/tags/list`

### Tasks for base images

#### compare Pull speed

```
docker pull centos
docker pull debian
docker pull alpine
docker pull busybox
```

#### compare size

`docker images`

- centos = 202MB
- debian = 100
- alpine = 5.53MB
- busybox = 1.2MB

`FROM scratch` would be even smaller!

#### start it and install something

```
docker run -it centos /bin/bash 
yum install -y nano

docker run -it debian /bin/bash 
apt-get update && apt-get install -y nano

docker run -it alpine /bin/bash 
apt-get update && apt-get install -y nano

docker run -it busybox /bin/sh
wget PACKAGE-URL
dpkg -i PACKAGE.deb
```
