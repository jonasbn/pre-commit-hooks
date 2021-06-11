#!/bin/sh

branch="$(git rev-parse --abbrev-ref HEAD)"

if [ "$branch" = "main" -o "$branch" = "master" ]; then
  echo "Committing directly to main/master branch is prohibited, use -n if you really insist"
  exit 1
fi
