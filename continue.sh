#!/bin/bash

for((i=0;i<=10;i++))
do
   if [ $i -eq 5 ]
   then
  	continue 
   else
   	echo "iteration num:$i"
   fi
done



for(( a=0 ;a <=100 ;a++))
do
   echo "a=$a"
   for((b=0;b<=10;b++))
   do
	if [ $b -eq 7 ]
	then 
	continue 2
	else
	echo "b is $b"
	fi
  done
done >output.txt  #处理循环的输出  可在shell脚本中使用管道或者重定向循环输出结果 ，可以通过在done 末尾添加命令来实现












