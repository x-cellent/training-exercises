# Hello World

## Install Docker

[Docker Engine](https://docs.docker.com/engine/install/#server)  
[Use Docker without sudo](https://docs.docker.com/engine/install/linux-postinstall/)  
[docker-compose](https://docs.docker.com/compose/install/#scenario-two-install-the-compose-plugin)  

## Check if Stuff works

The output of your command should be similar.

```bash
$ docker --version
Docker version 20.10.22, build 3a2c30b 

$ docker run hello-world

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

$ docker-compose version
Docker Compose version v2.11.1
```
