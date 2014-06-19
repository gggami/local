#!/bin/zsh

set -e

[ -z "$1" -o -z "$2" ] && exit 1

git config user.name "$1"
git config user.email "$2"

echo "------ ./git/config ------"
cat ./.git/config 
echo "------ ./git/config ------"
