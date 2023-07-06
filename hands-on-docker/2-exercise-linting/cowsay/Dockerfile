FROM docker/whalesay:latest
MAINTAINER <Alexander Pilz <alexander.pilz@x-cellent.com>
RUN apt-get -y update && apt-get install -y fortunes fortune-mod
CMD /usr/games/fortune | cowsay

