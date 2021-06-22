#!/bin/bash

dir="${PWD##*/}"

git fetch origin

LOCAL="$(git rev-parse @)"
REMOTE="$(git rev-parse @{u})"
BASE="$(git merge-base @ @{u})"

if [ "$LOCAL" = "$REMOTE" ]; then
  echo "$dir >>> Up-to-date"
elif [ "$LOCAL" = "$BASE" ]; then
  echo "$dir >>> pull"
  git pull origin
elif [ "$REMOTE" = "$BASE" ]; then
  echo "$dir >>> Need to push"
else
  echo "$dir >>> Incorrect state"
fi
