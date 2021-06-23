#!/bin/bash

. ./.config.sh

pushd "$main_repo" >> /dev/null

eval "$@"

popd >> /dev/null
