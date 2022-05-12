#!/usr/bin/env bash

echo "Cleaning up (removed) remote branches..."
/usr/bin/git prune --progress

echo "Removing merged branches..."
for branch in $(/usr/bin/git branch --merged master | /usr/bin/grep -v 'master$'); do
  /usr/bin/git branch -d ${branch}
done
