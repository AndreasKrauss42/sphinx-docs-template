#!/bin/sh -e
ARGS="$@"
echo "Arguments: $ARGS"

CWD=$(pwd)
STRUCTURIZR_PATH=$CWD/src/assets/structurizr

check_and_render_C4_dsl () {
	echo "Testing for a C4 model resource."
	DSL_FILES=$(find . -type f -name "*.dsl" | wc -l )
	if [ $DSL_FILES -gt 1 ]; then
  		echo "DSL file found. Processing file with 'structurizr'.";
    	echo "Generate views of C4 model..."
		structurizr export -workspace $STRUCTURIZR_PATH -format plantuml -output $STRUCTURIZR_PATH/
	else
  		echo "No DSL file found."
	fi
}

# if args contains --watch, run onetime mode
if echo "$ARGS" | grep -q -e '-h' -e '--watch'; then
    echo "Run in watch mode..."
	echo "Testing for a C4 model resource."
	check_and_render_C4_dsl
	bash -c "watchmedo shell-command \
			--patterns='*.dsl' \
			--ignore-pattern='${CWD}/_build/*' \
			--recursive \
			--command='structurizr export -workspace ${STRUCTURIZR_PATH} -format plantuml -output ${STRUCTURIZR_PATH}/' \
			--debug-force-polling \
			${STRUCTURIZR_PATH} &"
	sphinx-autobuild -a -b html --host 0.0.0.0 --port 8000 src _build/html
else
	check_and_render_C4_dsl
    echo "Start Sphinx-Generator..."
	sphinx-build -a -b html $CWD/src $CWD/_build
fi
