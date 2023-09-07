#! /bin/bash
echo "Start building documentation using Sphinx"
PROJECT_ROOT="$(if [[ "$OSTYPE" == "msys" ]]; then cygpath -w `pwd`; else pwd; fi)"
mkdir -p ${PROJECT_ROOT}/_build
docker start sphinx-gxc ||\
    (echo "Create container..." &&\
    docker run -d -it \
        --name=sphinx-gxc \
        -p 31442:8000 \
        --mount type=bind,source="${PROJECT_ROOT}"/docs,target=/home/sphinx/docs/src \
        --mount type=bind,source="${PROJECT_ROOT}"/docs,target=/home/sphinx/docs/_build \
        sphinx-gx:latest \
        --watch)
echo "Access the documentation under http://localhost:31442/index.html"
