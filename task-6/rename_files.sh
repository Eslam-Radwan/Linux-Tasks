#!/bin/bash

#echo $(pwd)
if [[ -e $1 ]]
then
	cd $1
fi

#echo $(pwd)


find . -maxdepth 1 -name "*.txt"| cut -d '/' -f 2 > files


lines=$(wc -l files | cut -d ' ' -f 1)
#echo $lines
for (( i = 1; i <= lines;++i ))
do
	fname=$(head -n $i files | tail -n 1)
#	echo $fname
	newname=old_$fname
#	echo $newname
	mv $fname $newname

done
rm files
