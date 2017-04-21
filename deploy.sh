#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

hugo -t cocoa-eh

if [ -d "../sosimon.github.io" ]; then
  echo -e "\033[0;31msosimon.github.io already exists. Please remove and rerun deploy script\033[0m"
fi

mkdir ../sosimon.github.io
git clone git@github.com:sosimon/sosimon.github.io.git ../sosimon.github.io

cp -r public/* ../sosimon.github.io/

cd ../sosimon.github.io

git config --global user.email "simon.so@gmail.com"
git config --global user.name "Simon So"

git add --all   # Add changes to git.

# Commit changes.
msg="Rebuilding site `date`"
git commit -m "$msg"

git push origin master   # Push source and build repos.
if [ $? != 0 ]; then
  echo -e "\033[0;31mGit push failed\033[0m"
  exit 1
fi

echo -e "\033[0;32mSite deploy OK\033[0m"

cd ../blog
rm -rf ../sosimon.github.io
rm -rf public

