#!/bin/bash
# iterate through all the files in a directory
echo "Please input path:"
#read -r 等待用户输入文字，并将输入的文字定义为 path
read -r path
for file in $path/*
do
        #在linux中目录名和文件名包含空格是合法的，所以"$file"需要用双引号否则会出错
        if [ -d "$file" ]
        then
                echo "$file is a directory"
        elif [ -f "$file" ]
        then
                echo "$file is a file"
        fi
done