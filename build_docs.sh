#! /bin/bash
echo "Start building documentation using Sphinx"
PROJECT_ROOT="$(if [[ "$OSTYPE" == "msys" ]]; then cygpath -w `pwd`; else pwd; fi)"
docker start sphinx-gxc ||\
    (echo "Create container..." &&\
    docker run -d -it \
        --name=sphinx-gxc \
        -p 31442:8000 \
        -v ${PROJECT_ROOT}/docs:/docs/src \
        -v ${PROJECT_ROOT}/_build:/docs/_build \
        sphinx-gx:latest \
        --watch)
echo "Access the documentation under http://localhost:31442/index.html"
