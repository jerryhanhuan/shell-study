#!bin/bash
#show vars in shell
echo "user info for userid:$USER" #var could be in  string
echo HOME:$HOME
echo "the cost of the item is \$15"
A=handsome
echo var=${A}
#反引号`` 允许将shell 命令的输出赋值给变量
date=`date`
echo $date