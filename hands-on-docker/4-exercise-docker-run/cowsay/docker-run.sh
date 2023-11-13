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

# 4) Install an application like "sl" or "nano" inside the running container. Is it still there, after the container got restarted? (kill + run)
