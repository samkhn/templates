#!/bin/bash
#set -x

if [ -x "$(command -v cindex)" ]; then
	cindex .
fi

pushd ./src

PROJECT_DIR="$(echo "$(pwd)" | sed -e 's/^\/home\/samiur\///')"
SOURCE_DIR=$(pwd)
BUILD_DIR=$HOME/build/$PROJECT_DIR/

if [ ! -d "$BUILD_DIR" ]; then
	mkdir -p $BUILD_DIR
fi

GOBUILDTIMELOGFILE=$BUILD_DIR/log.txt ./all.bash

popd
