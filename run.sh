#!/bin/bash
set -eux

D=../Rust/rage
export PATH=$PATH:$D/target/debug

export PASSWORD_STORE_DIR=/tmp/ps
rm -rf $PASSWORD_STORE_DIR

PASS=./src/password-store.sh
$PASS init foobar
$PASS generate test1
$PASS generate test2
$PASS show test1
$PASS show test2

$PASS edit test1
$PASS show test1
