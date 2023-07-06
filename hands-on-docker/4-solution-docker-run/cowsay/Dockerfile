FROM docker/whalesay

LABEL maintainer="Alexander Pilz <alexander.pilz@x-cellent.com>"

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    fortunes=1:1.99.1-7 \
    fortune-mod=1:1.99.1-7 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

CMD /usr/games/fortune | cowsay
