#!/bin/bash

#example1

for test in a b c d e f g
do
 echo "$test in the list"
 ((count++))
done
 echo "count=$count"
 test=h
 echo "test can change,test is $test"




#example 2
#1、使用转义符来转义 单引号
#2、使用双引号来定义含有单引号的值
for test in I don\'t know if "this'll" work;do
echo "$test"
done


#example3
#for 用空格分隔列表中的每个值，如果在个别的值中含有空格 ，必须使用双引号将他们包围起来

for test in "new York" "new year" "new shirt"
do
 echo "test is $test"
done


list="a b c d e f g"
list=$list" h" # add h in the tail
for test in $list
do
  echo "list eunm is $test"
done

path=/root
for file in $path/*  # 文件通配符
do
	if [ -d "$file" ] #在linux中目录名和文件名包含空格是合法的，所以"$file"需要用双引号否则会出错
	then	
		echo "$file is directory"
	elif [ -f "$file" ]
	then
		echo "$file is file"
	fi

done



# C-style for loop

for((i=0;i<=10;i++))
do
  echo "i is $i"
done


#mutiple variable  but condition is noly one

for((a=0,b=10;a<=10;a++,b--))
do
  echo "a is $a b is $b"
done








