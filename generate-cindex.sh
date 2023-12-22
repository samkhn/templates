#!/bin/bash

rm $HOME/.csearchindex

cindex \
	/usr/include/ \
	/usr/local/include/ \
	/usr/include/c++ \
	$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library \
	$HOME/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library \
	/usr/local/go/src \
	/usr/lib/erlang/lib \
	/usr/lib/python3.10 \
	$HOME/arch \
	$HOME/blog \
	$HOME/go/src \
	$HOME/kernel \
	$HOME/lib \
	$HOME/render \
	$HOME/templates \
	$HOME/x

