#!/bin/bash

gcc -Wall -O2 -m32 -c -o mm.o mm-refer.c
gcc -Wall -O2 -m32 -o mdriver mdriver.o mm.o memlib.o fsecs.o fcyc.o clock.o ftimer.o
./mdriver -V -l
