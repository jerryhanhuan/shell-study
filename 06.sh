#!/bin/bash
# 在bash中为一个变量指定一个数学值时，可使用美元符合和方括号 只有bash shell 可以使用该种方法
var1=$[2+3]
echo $var1

#bash shell 只支持整数算法，可用bc命令来计算浮点数 使用的基本格式为 var=`echo "options;expression"|bc`
var2=`echo "a=4;3.44/5"|bc`#设置变量a为4位小数
echo $var2

#var=`bc<<EOF
#options
#statements
#expression
#`
var3=`bc<<end
a=4
a1=(7+8)
a2=(9+10)
a3=a1+a2
end
`
echo $a3
