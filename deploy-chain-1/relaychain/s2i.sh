#!/usr/bin/env bash
set -e
VERSION=v1.3.1
curl https://github.com/openshift/source-to-image/releases/download/v1.3.1/source-to-image-$VERSION-a5a77147-darwin-amd64.tar.gz -o
tar -xvf ./source-to-image-$VERSION-a5a77147-darwin-amd64.tar.gz
cp ./source-to-image-$VERSION-a5a77147-darwin-amd64/s2i /usr/local/bin
