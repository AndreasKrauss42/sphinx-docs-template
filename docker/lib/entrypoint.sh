#!/bin/sh
ARGS="$@"
echo "Arguments: $ARGS"

# if args contains --watch, run watch mode
# if echo "$ARGS" | grep -q -e '-h' -e '--watch'; then
#     echo "Running watch mode..."
# 	sphinx-autobuild docs _build
# else
#     echo "Starting Sphinx-Generator..."
# 	sphinx-build -b html docs _build -a
# fi

sphinx-autobuild docs _build
