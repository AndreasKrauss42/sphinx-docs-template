#!/bin/ash -e
# This is an alias for plantuml in the docker container
java -Djava.awt.headless=true -jar /usr/local/bin/plantuml.jar "$@"
