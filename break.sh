#!/bin/bash

for((i=0;i<=10;i++))
do
   if [ $i -eq 5 ] #条件满足 执行break 终止循环
   then
  	 break
   else
   	echo "iteration num:$i"
   fi
done


#break 可跳出外循环 break n ,默认情况 n 是1 表示当前循环 2 则表示 停止外循环的下一循环

for(( a=0 ;a <=100 ;a++))
do
   echo "a=$a"
   for((b=0;b<=10;b++))
   do
	if [ $b -eq 7 ]
	then 
	break 2
	else
	echo "b is $b"
	fi
  done
done




