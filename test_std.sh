#!/bin/bash

#临时重定向 
echo "This is an error" >&2  #重定向到某个文件描述符，必须在文件描述符编号前添加&
echo "This is normal output"

#永久重定向
exec 1>testout  #所有定向到stdout 1 的脚本输出都重定向到testout

echo "out 1"
echo "out 2"

exec 2>testerr #所有定向到std err 2的脚本输出都重定向到testerr
echo "err1"
echo "err2"


#从文件获取输入
exec 0<testfile
count=1
while read line
do
 echo "each line is $line"
 count=$[$count+1]
done




#在shell并不局限于 0 ,1,2三种默认的文件描述符，最多可以有9个打开的文件描述符，其他的从 3-8 
exec 3>test3out
echo "this should be displayed on  the monitor"
echo "this should be stored in the file" >&3





#重定向输出文件描述符

exec 3>&1

exec 1>testout

echo "this should be stored in the output file"
echo "along with this line"

exec 1>&3

echo "Now things should back to the normal"



#重定向输入文件描述符

exec 4<&0
exec 0<testfile

count=1
while read line
do
  echo "line is $line"
  count=$[$count+1]
done
exec 0<&4



#testing input/output file descriptor
exec 3<>testfile
read line<&3
echo "read line ::$line"
echo "this is test lint">&3


#close the file descriptor   文件描述符关闭后不得再次使用该文件描述符进行读写操作
exec 3>&-


#禁止命令输出 可将输出重定向到空文件  /dev/null,任何重定向到该位置的数据都将丢失而且不会显示

#记录消息可以使用tee命令，tee 将数据同时发到stdout 和 tee 指定的文件名 tee filename
date | tee testfile #每次使用都会覆盖输出文件
date | tee -a testfile #-a 向文件追加数据



