#!/usr/bin/env bash

for branch in $(/usr/bin/git prune --progress && /usr/bin/git branch --merged master | /usr/bin/grep -v 'master$'); do
  /usr/bin/git branch -d ${branch}
done
