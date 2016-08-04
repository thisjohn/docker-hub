#!/bin/bash
SCRIPT_PATH=${BASH_SOURCE[0]}
SCRIPT_DIR=$(cd `dirname $SCRIPT_PATH` && pwd)

pushd $SCRIPT_DIR

docker build -t 'thisjohn/ubuntu:latest' .

popd
