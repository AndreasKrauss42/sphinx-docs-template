# syntax = edrevo/dockerfile-plus

FROM alpine:3.18

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

COPY --chmod=774 docker/lib/plantuml.sh /usr/local/bin/plantuml
COPY --chmod=774 docker/lib/structurizr.sh /usr/local/bin/structurizr
# Ensure local packages are preferred over distribution packages
ENV PATH=/usr/local/bin:$PATH


# Expose port of webserver providing sphinx documentation
EXPOSE 8000
# build files are provided via bind mount.


COPY docker/lib/entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
