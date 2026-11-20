#!/bin/sh

if [ "$#" -ne 2 ]; then
  echo "Usage: ./builder.sh <github-repo> <docker-image>"
  exit 1
fi

git clone "https://github.com/$1.git"
cd "$(basename "$1" .git)" || exit 1
docker build -t "$2" .
docker login -u "$DOCKER_USER" -p "$DOCKER_PWD"
docker push "$2"