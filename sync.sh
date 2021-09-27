#!/bin/bash


if [ -n "$1" ]; then
  git checkout $1

  checkout.sh $1
fi

pull.sh

git submodule init

run_for_all.sh "save_branch.sh"

git submodule update

run_for_all.sh "restore_branch.sh"
run_for_all.sh 'pull.sh'

run_in_main.sh "pod update"
