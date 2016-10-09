#!/bin/bash

git submodule init
git submodule update

cd public

git checkout master

cd ..
