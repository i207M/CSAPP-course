#!/bin/sh
cat 1.txt | ./hex2raw | ./ctarget -q
cat 2.txt | ./hex2raw | ./ctarget -q
cat 3.txt | ./hex2raw | ./ctarget -q
cat 4.txt | ./hex2raw | ./rtarget -q
cat 5.txt | ./hex2raw | ./rtarget -q