#!/usr/bin/env bash

# 1) start the created Images

docker run -it x-cellent.com/identicon:1.0



# 2) Enter the images and explore it

docker run -it x-cellent.com/identicon:1.0 /bin/bash



# 3) Find the port for the run command to the docker host 

# Output when starting the container:
# *** Stats server enabled on 0.0.0.0:81 fd: 12 ***
# uWSGI http bound on 0.0.0.0:80 fd 4

# OR

# get container id
docker ps
docker inspect -f '{{.State.Pid}}' 9bdac4f8d5ec
# ==> 23117
sudo nsenter -t 23117 -n netstat -tulpn
# tcp        0      0 127.0.0.1:39463         0.0.0.0:*               LISTEN      23117/uwsgi         
# tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN      23117/uwsgi         
# tcp        0      0 0.0.0.0:81              0.0.0.0:*               LISTEN      23117/uwsgi



# 4) Verify the port mapping

docker run -it -p 9090:80 x-cellent.com/identicon:1.0
# visit http://127.0.0.1:9090 from hostsystem
# (Redis must be running for the app to work)


# 5) Optional: Which user and rights do you have inside the container?

id
# uid=0(root) gid=0(root) groups=0(root)

# Filesystem rights:
touch /tmp/test.txt
ls -ll /tmp/test.txt
# -rw-r--r-- 1 root root 0 May  6 08:30 /tmp/test.txt

exit



# 6) Optional: Which user owns a file on the hostsystem, that was created inside the container
# - hint: mount a hostpath to the container

docker run -it -v /tmp/share/:/hostShare/ x-cellent.com/identicon:1.0 /bin/bash
touch /hostShare/test.txt
ls -ll /hostShare/test.txt
exit 
ls -ll /tmp/share/test.txt

# Result: Started the container as normal user, but the created files on the hostsystem by the container are owned by root. The Container also has acess to root owned files!



# 7) Optional: Install an application like "sl" or "nano" inside the running container. Is it still there, after the container got restarted? (kill + run)

docker run -it x-cellent.com/identicon:1.0 /bin/bash
apt-get update
apt-get install nano 
nano
exit

docker run -it x-cellent.com/identicon:1.0 /bin/bash
nano

# Result: Modifications to a running container do not affect the image!



