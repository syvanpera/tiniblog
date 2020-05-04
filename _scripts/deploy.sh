#!/bin/bash
set -xe

if [ $TRAVIS_BRANCH == 'master' ] ; then
  cd public
  git init

  git remote add deploy "travis@blog.tinimini.fi:/home/tuomo/docker/config/www/blog"
  git config user.name "Travis CI"
  git config user.email "tuomo.syvanpera+travis@gmail.com"

  git add .
  git commit -m "Deploy"
  git push --force deploy master
else
  echo "Not deploying, since this branch isn't master."
fi
