#!/bin/bash
rm -f secring.txt
for f in *.png; do
	zbarimg --raw $f | head -c -1 >> secring.txt
done

