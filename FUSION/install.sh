#!/bin/bash

TEMPLATE_PATH="$HOME/Library/Developer/Xcode/Templates"
BASEDIR=$(dirname $0)
SOURCE_TEMPLATE="${BASEDIR}/Templates"

sudo cp -rf "$SOURCE_TEMPLATE" "$TEMPLATE_PATH/.."
echo "[Installed] $TEMPLATE_PATH."

