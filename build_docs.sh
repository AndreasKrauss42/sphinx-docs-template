#! /bin/bash
echo "Start building documentation using Sphinx"
PROJECT_ROOT="$(if [[ "$OSTYPE" == "msys" ]]; then cygpath -w `pwd`; else pwd; fi)"
CONTAINER_ROOT=/home/sphinx/docs
HOST_SRC=docs
CONT_SRC=src
BUILD=_build
mkdir -p ${PROJECT_ROOT}/${BUILD}
docker start sphinx-gxc ||\
    (echo "Create container..." &&\
    docker run -d -it \
        --name=sphinx-gxc \
        -p 31442:8000 \
        --mount type=bind,source="${PROJECT_ROOT}"/"${HOST_SRC}",target="${CONTAINER_ROOT}"/"${CONTAINER_SRC}" \
        --mount type=bind,source="${PROJECT_ROOT}"/"${BUILD}",target="${CONTAINER_ROOT}"/"${BUILD}" \
        sphinx-gx:latest \
        --watch)
echo "Access the documentation under http://localhost:31442/index.html"
