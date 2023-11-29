#!/bin/bash

rm $HOME/.csearchindex

$HOME/go/bin/cindex \
    /usr/include/ /usr/local/include/ \
    /usr/src/kernels/`uname -r`/ \
    /usr/local/go/ \
    $HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/ \
	$HOME/out/compilers-erlotp-2023-11-28/lib/erlang/lib/ \
    /usr/lib64/python3.11 \
    $HOME/arch \
    $HOME/blog \
    $HOME/compilers \
    $HOME/crypt \
    $HOME/games \
    $HOME/go/src \
    $HOME/kernels \
    $HOME/lib \
    $HOME/net \
    $HOME/perf \
    $HOME/render \
    $HOME/system \
    $HOME/templates \
    $HOME/testing \
    $HOME/tools \
    $HOME/x
