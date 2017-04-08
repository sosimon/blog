#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

hugo -t cocoa

if [ -d "../sosimon.github.io" ]; then
  echo -e "\033[0;31msosimon.github.io already exists. Please remove and rerun deploy script\033[0m"
fi

mkdir ../sosimon.github.io
git clone https://github.com/sosimon/sosimon.github.io.git ../sosimon.github.io

cp -r public/* ../sosimon.github.io/

cd ../sosimon.github.io

git add --all   # Add changes to git.

# Commit changes.
msg="rebuilding site `date`"
git commit -m "$msg"

git push origin master   # Push source and build repos.
if [ $? != 0 ]; then
  echo -e "\033[0;31mgit push failed\033[0m"
  exit 1
fi

echo -e "\033[0;32mSite deploy OK\033[0m"

cd ../blog
rm -rf ../sosimon.github.io
rm -rf public

