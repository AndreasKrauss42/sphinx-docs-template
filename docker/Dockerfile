# syntax = edrevo/dockerfile-plus

FROM alpine:3.18

RUN addgroup -g 1000 sphinx \
    && adduser -u 1000 -G sphinx -s /bin/sh -D sphinx

# TODO REMOVE Proxy after resolution
# INCLUDE+ docker/lib/_proxy.setup

RUN apk update && apk upgrade

COPY docker/lib/requirements.txt .

### Tool Dependencies ##########################################################
INCLUDE+ docker/lib/curl.setup
INCLUDE+ docker/lib/python.setup
INCLUDE+ docker/lib/sphinx.setup
INCLUDE+ docker/lib/java.setup
INCLUDE+ docker/lib/plantuml.setup
INCLUDE+ docker/lib/watchmedo.setup
INCLUDE+ docker/lib/structurizr.setup
################################################################################

USER sphinx
RUN /bin/bash -c 'mkdir -p ~/docs/{src,_build} && \
	chown -R sphinx:sphinx ~/docs'  

WORKDIR /home/sphinx/docs

COPY --chown=sphinx:sphinx --chmod=774 docker/lib/plantuml.sh /usr/local/bin/plantuml
COPY --chown=sphinx:sphinx --chmod=774 docker/lib/structurizr.sh /usr/local/bin/structurizr
# Ensure local packages are preferred over distribution packages
ENV PATH=/usr/local/bin:$PATH

# Default port for webserver
EXPOSE 8000

COPY docker/lib/entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

