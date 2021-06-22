#!/bin/bash

#echo "\n\n\n=== GIT PULL ALL ==="
#
#project="$(cd "$(dirname "$0")"; pwd -P)"
#pushd "$project" > /dev/null
#
#if [ "$1" != "" ]; then
#	project="$1"
#fi
#
#for dir in "$project/"*/; do
#	sh git_helper_pull.sh "$dir" &
#done
#
#wait
#
#popd > /dev/null

./run_for_all.sh 'pull.sh'
