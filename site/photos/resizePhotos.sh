#!/usr/bin/env bash

declare -a imgSizes=(85 300 330 885 650 270);

for f in `find . -name "*thumb*"`
do
     rm -rf $f;
done

for f in `find . -name "*.JPG"`
do
    for s in "${imgSizes[@]}"
    do
         newname=${f/.JPG/.thumb.$s.JPG}
         convert $f -resize $s "$newname"
    done
done