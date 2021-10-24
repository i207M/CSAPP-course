#!/bin/sh
./hex2raw < 5.txt > 5.hex
cat 5.txt | ./hex2raw | ./rtarget -q
