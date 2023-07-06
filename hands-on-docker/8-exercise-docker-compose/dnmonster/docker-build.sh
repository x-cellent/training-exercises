#!/usr/bin/env bash

docker build -t x-cellent.com/dnmonster:1.0 -t x-cellent.com/dnmonster:latest .

docker images | grep x-cellent.com/dnmonster