#!/usr/bin/env bash

if [ -z "$@" ]; then
  echo "Need branch name"

  exit 1
fi

git stash
git checkout master
git pull
git checkout -b "${1}"
git stash apply
