#!/bin/bash

git submodule init

run_for_all.sh "save_branch.sh"

git submodule update > /dev/null

run_for_all.sh "restore_branch.sh"
run_for_all.sh 'pull.sh'

. ./config.sh

pushd $main_repo

pod update

popd
