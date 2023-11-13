# 1) Run the docker image with the entrypoint app
docker run x-cellent.com/whalesay:1.0

# Run own app inside the container (cowsay) with an argument (Hi)
docker run x-cellent.com/whalesay:1.0 cowsay Hi 

docker run -it x-cellent.com/whalesay:1.0 cowsay Hallo!

# docker:           The docker command
# run:              Run a command in a new container
# -i:               --interactive       Keep STDIN open even if not attached
# -t:               --tty               Allocate a pseudo-TTY
# docker-whale:     Name of the image
# cowsay:           Application inside the container
# Hallo!            Argument for the application     

# 2) Enter the container
# docker run -it x-cellent.com/whalesay /bin/bash
# Look around!

# 3) Which user and rights do you have inside the container?

id
# uid=0(root) gid=0(root) groups=0(root)

# Filesystem rights:
touch /tmp/test.txt
ls -ll /tmp/test.txt
# -rw-r--r-- 1 root root 0 May  3 09:21 /tmp/test.txt

# 4) Install an application like "sl" or "nano" inside the running container. Is it still there, after the container got restarted? (kill + run)

docker run -it x-cellent.com/whalesay:1.0 /bin/bash
sudo apt-get install sl
sl
exit

docker run -it x-cellent.com/whalesay:1.0 /bin/bash
sl

# Result: Modifications to a running container do not affect the image!
