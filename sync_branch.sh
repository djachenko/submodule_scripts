#!/bin/bash

dest_branch=$1
current_branch="$(git branch --show-current)"

if [[ $current_branch == "$dest_branch" ]]; then
  exit
fi

git stash

git checkout "$dest_branch"

./new_pull.sh

git checkout "$current_branch"

git merge "$dest_branch"

git stash pop