# FROM: which base image to use
# docker: user / organisation name (namespace) in the docker-registry
# whalesay: image name
# latest: version / tag of the image
FROM docker/whalesay:latest

# MAINTAINER:      DEPRECATED!
LABEL authors="Alexander Pilz <alexander.pilz@x-cellent.com>"

# RUN:      Runs the following command
#           shell form, the command is run in a shell, which by default is "/bin/sh -c" on Linux or "cmd /S /C" on Windows
# Install apt package "fortunes" and "fortune-mod" to generate random text that can be printed by the application
RUN apt-get update --quiet && apt-get install -y fortunes fortune-mod

# Specify start command "/usr/games/fortune | cowsay" (CMD, use shell form since we use the pipe operator)
CMD /usr/games/fortune | cowsay
# You can also use the shell form:
# CMD ["/bin/bash", "-c", "/usr/games/fortune | /usr/local/bin/cowsay"]
