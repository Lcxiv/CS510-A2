#!/bin/bash
 
echo  "Enter the name of the directory you want to create\n"

#read name
name="a"

mkdir -p "$name"

echo "The directory $name has been created\n"


for i in `seq 1 200`;do
mkdir -p "$name" "$name/$name$i"
echo $"a\nb\nc\nd\ne" > ./$name/$name$i/file.txt
done 

#ls -1d $name $name/$name*/*

