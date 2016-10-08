#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

hugo -t cocoa

cd public    # Go To Public folder
git add --all   # Add changes to git.

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push origin master   # Push source and build repos.

cd .. 
