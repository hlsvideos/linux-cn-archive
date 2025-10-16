#!/bin/sh

wget https://github.com/gohugoio/hugo/releases/download/v0.126.2/hugo_extended_0.126.2_Linux-64bit.tar.gz
tar xf hugo_extended_0.126.2_Linux-64bit.tar.gz
time ./hugo --gc --minify
ls

#mkdir htmls
#tar -c public | zstd -c -T0 | split -a 5 -b 20m -d - htmls/linux-cn-archive-htmls.tar.zst.
#mv htmls public

find ./public > find-public.txt
#rm -r ./public/data/attachment/album
rm -r ./public/data/attachment/album/201*
rm -r ./public/data/attachment/album/2020*
rm -r ./public/data/attachment/album/2021*
rm -r ./public/data/attachment/album/2022*
rm -r ./public/data/attachment/album/2023
rm -r ./public/tags
find ./public > after-remove.txt
cp find-public.txt public
cp after-remove.txt public
mv find-public.txt public/index.txt

