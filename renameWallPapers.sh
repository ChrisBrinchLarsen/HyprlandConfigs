#!/bin/bash

directory=~/Pictures/Wallpapers
counter=1

for file in $directory/*;
do
	new_name="${file}bak"
	mv "$file" "$new_name"
done

for file in $directory/*;
do
	extension="${file##*.}"
	new_name="${directory}/${counter}.${extension}"
	mv "$file" "$new_name"
	((counter++))
done

for file in $directory/*;
do
	new_name=${file::-3}
	mv "$file" "$new_name"
done
