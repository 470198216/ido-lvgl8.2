#!/bin/bash

dos2unix generated/*
sed -i "s/\"//g" generated/generated.mk
sed -i "s/\"font/\"\.\.\/font/g" generated/guider_fonts/guider_fonts.h

mkdir objs
mkdir output
make clean
make -j16 --trace
