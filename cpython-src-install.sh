#!/bin/bash

if [ -x "$(command -v cindex)" ]; then
	cindex .
fi

pushd $(dirname $0)

./configure --prefix=$HOME/install/python3-"$(date '+%Y-%m-%d') --with-assertions --with-ensurepip=install --enable-optimizations
make
# make test

popd
