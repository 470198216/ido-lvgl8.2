#!/bin/bash

sed -i "s/\"//g" generated/generated.mk
mkdir objs
mkdir output
make clean
make -j16 --trace
