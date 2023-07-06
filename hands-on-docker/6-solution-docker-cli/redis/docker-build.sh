#!/usr/bin/env bash

docker build -t x-cellent.com/redis:1.0 -t x-cellent.com/redis:latest .

docker images | grep x-cellent.com/redis