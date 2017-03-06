#!/bin/bash
mkdir -p out
gpg --export-secret-keys -a | split -a 1 --additional-suffix=.txt -b 1556 -d - secring.gpg.
for f in secring.gpg.*; do
	cat $f | qrencode -o out/${f%.*}.png
done
rm secring.gpg.*.txt
