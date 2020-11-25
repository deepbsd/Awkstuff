#!/usr/bin/env bash

# I was looking for a way to launch awk from inside a bash script, where the awk script uses an external awk script.  In essence,
# I could use the same Bash exercises I use for the Bash track of exercism, but i could solve them with awk instead of bash, 
# sort of.  Anyway, let's try it with Two Fer

awk -f twofer.awk "$1"

