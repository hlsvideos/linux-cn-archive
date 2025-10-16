#!/bin/sh

wget https://github.com/gohugoio/hugo/releases/download/v0.126.2/hugo_extended_0.126.2_Linux-64bit.tar.gz
tar xf hugo_extended_0.126.2_Linux-64bit.tar.gz
time ./hugo --gc --minify
ls

mkdir htmls
tar -c public | zstd -c -T0 | split -a 5 -b 20m -d - htmls/linux-cn-archive-htmls.tar.zst.
mv htmls public

find ./public > find-public.txt
rm -r ./public/data/attachment/album
rm -r ./public/tags
cp find-public.txt public
mv find-public.txt public/index.txt
