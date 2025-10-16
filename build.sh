#!/bin/sh

wget https://github.com/gohugoio/hugo/releases/download/v0.126.2/hugo_extended_0.126.2_Linux-64bit.tar.gz
tar xf hugo_extended_0.126.2_Linux-64bit.tar.gz
time ./hugo --gc --minify
ls
find .
