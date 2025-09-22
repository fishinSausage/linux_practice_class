#!/bin/sh
rows=$1
columns=$2

if [ -z $rows ] ||  [ -z $columns ] ; then
	echo "Invalid input"
	exit 1
fi

if [ $rows -le 0 ] || [ $columns -le 0 ] ; then
	echo "Input must be greater than 0"
	exit 1
fi

for i in $( seq 1 $rows )
do
	for j in $( seq 1 $columns )
	do
		printf "%d*%d=%-4d" "$i" "$j"  `expr $j \* $i`
	done
	echo ""
done

