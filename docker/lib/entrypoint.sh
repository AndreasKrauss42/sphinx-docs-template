#!/bin/sh -e
ARGS="$@"
echo "Arguments: $ARGS"

CWD=$(pwd)
STRUCTURIZR_PATH=$CWD/src/assets/structurizr

# if args contains --watch, run onetime mode
if echo "$ARGS" | grep -q -e '-h' -e '--watch'; then
    echo "Run in watch mode..."
    structurizr export -workspace $STRUCTURIZR_PATH -format plantuml -output $STRUCTURIZR_PATH
    bash -c "watchmedo shell-command \
                --patterns='*.dsl' \
                --ignore-pattern='${CWD}/_build/*' \
                --recursive \
                --command='structurizr export -workspace ${STRUCTURIZR_PATH} -format plantuml ${STRUCTURIZR_PATH}' \
                --debug-force-polling \
                ${STRUCTURIZR_PATH} &"
	sphinx-autobuild -a -b html --host 0.0.0.0 --port 8000 src _build/html
else
    echo "Generate views of C4 model..."
    structurizr export -workspace $STRUCTURIZR_PATH -format plantuml -output $STRUCTURIZR_PATH
    echo "Start Sphinx-Generator..."
	sphinx-build -a -b html $CWD/src $CWD/_build
fi
