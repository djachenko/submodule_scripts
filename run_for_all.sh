#!/bin/bash

for dir in */; do
		pushd "$dir" > /dev/null

		eval "$@"

		popd > /dev/null
done
