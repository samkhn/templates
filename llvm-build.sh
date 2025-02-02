#!/bin/bash

if [ -x "$(command -v cindex)" ]; then
	cindex .
fi

pushd $(dirname $0)

PROJECT_DIR=llvm
SOURCE_DIR=$HOME/src/$PROJECT_DIR
BUILD_DIR=$HOME/build/$PROJECT_DIR-"$(date +"%Y-%m-%d")"
INSTALL_DIR=$HOME/install/$PROJECT_DIR-"$(date +"%Y-%m-%d")"

if [ ! -d "$BUILD_DIR" ]; then
	mkdir -p $BUILD_DIR
fi

cmake -B $BUILD_DIR -G Ninja -S $SOURCE_DIR/llvm \
	-DCMAKE_INSTALL_PREFIX=$INSTALL_DIR \
	-DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;lld;lldb;polly" -DLLVM_ENABLE_RUNTIMES=all -DLLVM_INSTALL_UTILS=On \
	-DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=On
# cmake --build $BUILD_DIR --target check-all
cmake --build $BUILD_DIR --target install

popd
