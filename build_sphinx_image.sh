#!/bin/bash

version=0.1.0

# Set environment variables to enable Dockerfile-plus syntax
export DOCKER_BUILDKIT=1
export COMPOSE_DOCKER_CLI_BUILD=1

docker build -f docker/Dockerfile -t sphinx-gx:v$version -t sphinx-gx:latest .
