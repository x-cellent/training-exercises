# Run the docker image with the entrypoint app
docker run x-cellent.com/whalesay:1.0 

# Run own app inside the container (cowsay) with an argument (Hi)
docker run x-cellent.com/whalesay:1.0 cowsay "Hi Welt"

docker run -it x-cellent.com/whalesay:1.0 cowsay Hallo!

# docker:           The docker command
# run:              Run a command in a new container
# -i:               --interactive       Keep STDIN open even if not attached
# -t:               --tty               Allocate a pseudo-TTY
# docker-whale:     Name of the image
# cowsay:           Application inside the container
# Hallo!            Argument for the application     

# Enter the container
# docker run -it docker-whale /bin/bash

#!/usr/bin/env bash

# 1) Start the created Images



# 2) Enter the images and explore it




# 3) Find the port for the run command to the docker host 

# whalesay has no open ports! Skip

# 4) Verify the port mapping

# whalesay has no open ports! Skip

# 5) Optional: Which user and rights do you have inside the container?



# 6) Optional: Which user owns a file on the hostsystem, that was created inside the container
# - hint: mount a hostpath to the container



# 7) Optional: Install an application like "sl" or "nano" inside the running container. Is it still there, after the container got restarted? (kill + run)


