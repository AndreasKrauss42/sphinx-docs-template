#!/bin/sh -e
ARGS="$@"
echo "Arguments: $ARGS"

CWD=$(pwd)

# if args contains --watch, run onetime mode
if echo "$ARGS" | grep -q -e '-h' -e '--watch'; then
    echo "Run in watch mode..."
    structurizr export -workspace $CWD/src/assets/structurizr/ -format plantuml -output $CWD/src/assets/structurizr/
    bash -c "watchmedo shell-command \
                --patterns='*.dsl' \
                --ignore-pattern='/docs/_build/*' \
                --recursive \
                --command='structurizr export -workspace ${CWD}/src/assets/structurizr -format plantuml -output ${CWD}/src/assets/structurizr/' \
                --debug-force-polling \
                /docs/src/assets/structurizr &"
	sphinx-autobuild -a -b html --host 0.0.0.0 --port 8000 src _build/html
else
    echo "Generate views of C4 model..."
    structurizr export -workspace $CWD/src/assets/structurizr -format plantuml -output $CWD/src/assets/structurizr/
    echo "Start Sphinx-Generator..."
	sphinx-build -b html $CWD/src $CWD/_build -a
fi
