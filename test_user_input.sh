#!/bin/bash
sum=1
if [ -n "$1" ]
then
for((i=1;i<=$1;i++))  # $1 第一个参数
do
   sum=$[$sum * $i]
done
echo "sum = $sum"
fi

#testing two command line  parameters 
if [ -n "$1" ] && [ -n "$2" ]
then
total=$[$1 * $2]
echo "para1=$1 para2=$2 total=$total"
fi

#如果脚本需要的命令行参数 > 9 ，那么可以继续在命令行中添加命令行参数，但是变量
#名称会稍有变化。在第九个变量后，必须使用大括号将变量括起来，例如${10}
#example
if [ -n "${10}" ] && [ -n "${10}" ]
then
total=$[${10}+${11}]
echo "para10 is ${10} para11 is ${11} total is $total"
fi

# $0 可以确定shell从命令行启动的程序的名字，但是$0 包含程序的路径，可以利用basename 来获取程序名


var=`basename $0`
echo "var is $var"



#参数计数 特殊变量 $# 存储 参数个数
echo "there are $# para"



para=$#
echo "the last para is $#"
echo "the last para is ${!#}"



#变量$*将命令行中提供的所有参数作为一个单词处理，这个单词包含出现在命令中的每一个参数值，本质上，$*不是将 参数视为多个对象，而是将他们视为一个参数            
#变量$@ 将命令参数作为同一个字符串中的多个单词处理，允许对其中的值进行迭代，分隔开所提供的不同参数 


#testing $* and $@

count=1
for para in "$*"
do
 echo "\$* para is $para"
 count=$[$count+1]
done

count=1
for para in "$@" 
do
  echo "\$@ para is $para"
  count=$[$count+1]
done

#shift 默认将每个参数左移一个位置，于是变量$3的值移给变量$2,变量$2的值移给变量$1,而变量1的值被丢弃($0 的值 和程序名称都保持不变)
#shift n 左移n个位置
#使用shift 需要谨慎 将某一参数位移掉后，该参数值就丢失了 不能恢复
count=1
while [ -n "$1" ]
do
echo "shift $1"
shift
done






















