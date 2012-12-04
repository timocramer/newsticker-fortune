#!/bin/sh

while read -r line; do
	echo "$line"
	echo '%'
done < "$1"
