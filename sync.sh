#!/bin/bash

if [ -n "$1" ]; then
  checkout.sh $1
fi

git submodule init

run_for_all.sh "save_branch.sh"

git submodule update

run_for_all.sh "restore_branch.sh"
run_for_all.sh 'pull.sh'

run_in_main.sh "pod update"
