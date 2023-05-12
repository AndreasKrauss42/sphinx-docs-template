#! /bin/bash
echo "Start building documentation using Sphinx"
docker run -d -it -p 8042:8000 -v "$(if [[ "$OSTYPE" == "msys" ]]; then cygpath -w `pwd`; else pwd; fi)"/docs:docs sphinx-gx:latest
