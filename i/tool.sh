#! /bin/bash

gzip -d ./*gz
chown cg ./*img
rm -rvf ./*bochsrc*
cp -rvf ../h/*bochsrc* ./
