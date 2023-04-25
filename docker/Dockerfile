# syntax = edrevo/dockerfile-plus

FROM alpine:latest


### VECTOR PROXY ###############################################################
INCLUDE+ docker/lib/_proxy.setup
################################################################################

RUN apk update && apk upgrade

COPY docs/requirements.txt .
COPY docker/lib/plantuml.sh /usr/local/bin/plantuml
COPY docker/lib/structurizr.sh /usr/local/bin/structurizr
# Ensure local packages are preferred over distribution packages
ENV PATH=/usr/local/bin:$PATH

ENV DOC_ROOT=/data

WORKDIR ${DOC_ROOT}
COPY docker/lib/entrypoint.sh ./entrypoint.sh

### Tool Dependencies ##########################################################
INCLUDE+ docker/lib/java.setup
INCLUDE+ docker/lib/plantuml.setup
INCLUDE+ docker/lib/structurizr.setup
INCLUDE+ docker/lib/python.setup
INCLUDE+ docker/lib/sphinx.setup
################################################################################

ENTRYPOINT [ "data/entrypoint.sh" ]

# Verify Installations:
# RUN java --version && \
#	python --version && \
#	plantuml --version && \
#	structurizr --version

# todo expose _build/
# use volume
# RUN docker cp CONTAINER:./_build ./_build
