#!/bin/bash
echo "---------Start script----------"
echo "--------1 Step------------------"
for var in one two three four
do
	echo "The $var item"
done
echo "--------2 Step------------------"

file="/tmp/lsh/1basic_com.sh"
IFS=$'\n'
for var in $(cat $file)
do
echo " $var" 
done
echo "--------3 Step------------------"
file="/tmp/lsh/1basic_com.sh"
IFS=$'\n'
if [ -d  $HOME/testdir ]
	then
			echo "start"
			for var in $(cat $file)
		do
			touch $HOME/testdir/$var
		done
	else 
	echo "not start"
fi
echo "--------4 Step------------------"
for file in $HOME/testdir/* 
do 
	if [ -d "$file" ] 
		then
		echo "$file is a directory" 
	elif [ -f "$file" ] 
		then 
		echo "$file is a file"
		rm -f $file
		echo "$file Has been removed" 
	fi 
done 
echo "--------5 Step------------------"
IFS=':'
for folders in $PATH
do
	for file in $folders/* 
		do
			if [ -x $file ]
				then
				echo " $file"
				fi
		done >> ~/testdir/allaps.txt 
done 
echo "All done"
