#!/bin/bash

source dir.sh

#variable to declare path to use
dir=$(ls -d */* | grep "a.$")
count=1

#echo $dir

#looping through all the subdirectories of "a" to change a file (file.txt) based on the last number of the subdirectory


for i in ./a/*;do

	echo $i
	num="${i: -1}" 
	#echo "$num"
	if [ "$num" == "0" ]; then
		cat ./a/a$num/file.txt | awk 'NR==4 {$0="This is the sentence I chose"} 1' ./a/a$count/file.txt
	elif [ "$num" == "1" ]; then
		cat ./a/a$num/file.txt |  awk 'NR==4 {$0="eat beets"} 1' ./a/a$count/file.txt
	elif [ "$num" == "4" ]; then
                cat ./a/a$num/file.txt |  awk 'NR==4 {$0="squash are great"} 1' ./a/a$count/file.txt
	elif [ "$num" == "5" ]; then
                cat ./a/a$num/file.txt |  awk 'NR==4 {$0="dogs are better than cats"} 1' ./a/a$count/file.txt
	elif [ "$num" == "7" ]; then
                cat ./a/a$num/file.txt |  awk 'NR==4 {$0="Hello World"} 1' ./a/a$count/file.txt
	else
                cat ./a/a$num/file.txt |  awk 'NR==4 {$0=" "} 1' ./a/a$count/file.txt
	fi
	count=$((count+1))
done
