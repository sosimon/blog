#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

hugo -t cocoa

cd public    # Go To Public folder

git config user.email "simon.so@gmail.com"
git config user.name "Simon So"

git add --all   # Add changes to git.

# Commit changes.
msg="rebuilding site `date`"
git commit -m "$msg"

git push origin master   # Push source and build repos.
if [ $? != 0 ]; then
  echo "git push failed"
  exit 1
fi

echo "deploy OK"

