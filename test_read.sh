#!/bin/bash
#-t 指定read 命令等待输入的秒数
#-p 允许在read 命令中加入一个提示

if read -t 5 -p "please enter your name ::" name
then
  echo "hello,welcome  to my script"
else
  echo "time out"
fi


#-n 允许用户在字符串后立即输入数据
#数值1表示read命令只要接收到一个字符就退出
read -n1 -p "Do you want continue[Y/N]?" answer
case $answer in
	Y|y)echo
	    echo "continue";;
	N|n)echo
	    echo "break"
	exit;; #exit 会退出整个脚本
esac
echo "end"




#默读 -s 输入的数据不显示在屏幕上
read -s -p "please enter your passwd::" passwd
echo
echo "Is your password is $passwd" 




#每调用一次read命令，都会读取文件中的一行文本
count=1
cat /root/connPoolAPI/makefile | while read line
do
  echo "count is $count  line is $line"
  count=$[$count+1]
done









