#!/bin/ash -e
# Add an alias for plantuml
java -Djava.awt.headless=true -jar /usr/local/lib/plantuml.jar "$@"
