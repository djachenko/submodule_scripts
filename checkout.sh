#!/bin/bash

#if [ "$2" != "" ]; then
#	project="$2"
#else
#	project="$(cd "$(dirname "$0")"; pwd -P)"
#fi
#
#pushd "$project" > /dev/null
#toBranch="$1"
#
#for dir in */; do
#	if [[ "$dir" == ios-*  || "$dir" == communicator || "$dir" == business || "$dir" == showcase ]]; then
#		pushd "$dir" > /dev/null
#		git checkout "$toBranch"
#		popd > /dev/null
#	fi
#done
#
#popd > /dev/null

run_for_all.sh "git checkout $1"
