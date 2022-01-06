#!/bin/bash

gcc -fPIC -shared -o libmax.so max.c
gcc test.c -L. -lmax
LD_LIBRARY_PATH=. ./a.out

