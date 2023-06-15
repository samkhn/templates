#!/bin/bash

SRC_DIR=$HOME/src

cindex \
    /usr/include/ /usr/local/include/ \
	/usr/src/kernels/`uname -r`/ \
    /usr/local/go/ \
    $HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/ \
    $SRC_DIR/blog \
    $SRC_DIR/compilers \
    $SRC_DIR/kernels \
    $SRC_DIR/net \
    $SRC_DIR/perf \
    $SRC_DIR/render \
    $SRC_DIR/testing \
    $SRC_DIR/tools \
    $SRC_DIR/x
