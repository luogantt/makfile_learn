#!/bin/bash

gcc -shared dlib.c -o dlib.so

gcc test.c -o test.o -ldl
