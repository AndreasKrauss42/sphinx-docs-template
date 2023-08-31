#!/bin/sh -e
ARGS="$@"
echo "Arguments: $ARGS"

CWD=$(pwd)

# if args contains --watch, run onetime mode
if echo "$ARGS" | grep -q -e '-h' -e '--watch'; then
    echo "Run in watch mode..."
    structurizr export -workspace /docs/src/assets/structurizr/ -format plantuml -output $CWD/docs/assets/structurizr/
    bash -c "watchmedo shell-command \
                --patterns='*.dsl' \
                --ignore-pattern='/docs/_build/*' \
                --recursive \
                --command='structurizr export -workspace ${CWD}/docs/assets/structurizr -format plantuml -output ${CWD}/docs/assets/structurizr/' \
                --debug-force-polling \
                /docs/src/assets/structurizr &"
	sphinx-autobuild -a -b html --host 0.0.0.0 --port 8000 docs _build/html
else
    echo "Generate views of C4 model..."
    structurizr export -workspace $CWD/docs/assets/structurizr -format plantuml -output $CWD/docs/assets/structurizr/
    echo "Start Sphinx-Generator..."
	sphinx-build -b html docs _build -a
fi
