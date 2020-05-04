#!/bin/bash
set -e

echo "Importing the SSH deployment key"
openssl aes-256-cbc -K $encrypted_0ddd2445e49f_key -iv $encrypted_0ddd2445e49f_iv -in travis-deploy.enc -out travis-deploy -d
rm travis-deploy.enc
chmod 600 travis-deploy
mv travis-deploy ~/.ssh/id_rsa

export TRAVIS_BUILD_DIR=$(pwd)
mkdir $HOME/src
cd $HOME/src
git clone https://github.com/gohugoio/hugo.git
cd hugo
go install
cd $TRAVIS_BUILD_DIR
