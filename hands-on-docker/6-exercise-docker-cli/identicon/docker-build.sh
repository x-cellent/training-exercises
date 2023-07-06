#!/usr/bin/env bash

docker build -t x-cellent.com/identicon:1.0 -t x-cellent.com/identicon:latest .

docker images | grep x-cellent.com/identicon