#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

#build the project.
hugo -t book

#go to the ublic folder and add changes to git
cd public && git add .

#make commit messages
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

#push source and build repos
git push origin master

#blog repo commit & push
cd .. && git add .

#make blog repo commit messages
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push origin master
