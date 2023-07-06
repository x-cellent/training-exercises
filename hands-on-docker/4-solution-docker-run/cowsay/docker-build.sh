#!/usr/bin/env bash

docker build -t x-cellent.com/whalesay:1.0 -t x-cellent.com/whalesay:latest .

docker images | grep whalesay