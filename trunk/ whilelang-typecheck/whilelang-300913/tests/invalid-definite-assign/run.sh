#!/bin/sh

files=$(ls *.while)

for f in $files
do
    echo $f
    nf=$(echo $f | sed -e "s/.while/.sysout/")
    java -cp ../../src whilelang.Main $f > $nf
done