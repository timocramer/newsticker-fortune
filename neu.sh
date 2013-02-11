#!/bin/sh

cp newsticker.txt /tmp/
cat >>/tmp/newsticker.txt
sort -u /tmp/newsticker.txt >newsticker.txt

