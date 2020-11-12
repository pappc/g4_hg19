#!/bin/bash

input=$1/*

for i in $input; do
	echo "working on " $i
	bedtools sort -i $i > tmp.bed
	./bedToBigBed tmp.bed hg19.chrom.sizes $i.bb
	rm tmp.bed
done
