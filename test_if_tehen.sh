#/bin/bash
if date
then # mutiple commands in the then section 
echo "date is `date`"
ls -la
echo "user is $USER"
fi
#test the else section
testuser=badtest
if grep $testuser /etc/passwd
then
   echo "testuser is $testuser"
else  #mutiple commands in the else section
   echo "$testuser is not exist"
   date
   ls -la 
fi

#和C语言中类似,执行成功则退出当前if
if data
then echo "today is what day?"
elif cd
then
echo "testuser is $testuser"
elif  ls
then 
echo "root is root"
fi


#	if [ conditon ]  [ 和 ] 前必须有一个空格
#	then
#     		commands
#	fi
#[ ]可进行数值比较、字符串比较、文件比较
#n1 -eq n2  检查n1=n2?
#n1 -le n2 检查n1<=n2?
#n1 -ge n2 n1>=n2 ?
#n1 -lt n2 n1 <n2 ?
#n1 -gt n2 n1 >n2?
#n1 -ne n2 n1!=n2 ?

#using numeric test comparisons  必须是整数
var1=10
var2=15

if [ $var1 -eq $var2 ]
then
  echo "$var1 is = $var2"
elif [ $var1 -le $var2 ]
then
  echo "$var1 is <= $var2"
fi




#using string test comparsions 
# str1 = str2 是否相等
# str1 > str2 ？
# str1 < str2
# str1 != str2
# -n str1  strlen(str1)>0 ?
# -z str1  strlen(str1)=0?

str1="123"
str2="1234"
if [ $str1 = $str2 ] # = 前后需要空格
then
  echo "$str1 = $str2"
elif [ $str1 \> $str2 ] #  >以及<  需要转义 不然会被当成重定向
then
  echo "$str1 > $str2"
else
  echo "$str1 < $str2"
fi


#大写字母小于小写字母  按照ASCII码排序 A：65 a:97
str3="testing"
str4="Testing"

if [ $str3 = $str4 ]
then
  echo "$str3 = $str4"
elif [ $str3 \< $str4 ]
then
 echo "$str3 \< $str4"
else
 echo "$str3 > $str4"
fi



#file compare
# -d file 检查file是否存在 并且是一个目录
# -e file  检查file 是否存在 可用于检查目录是否存在 也可用于检查文件是否存在
# -f file 检查file 是否存在 并且是一个文件
# -r file 检查file是否存在 并且可读
# -s file 检查file是否存在 并且不为空
# -w file 检查file是否存在 并且可写
# -x file 检查file 是否存在 并且可执行
# -o file 检查file是否存在 并且被当前用户拥有
# -g file 检查file是否存在 并且默认组是否为当前用户组
# file1 -nt file2 检查file1 是否 比file2新
# file1 -ot file2 检查file1 是否比 file2旧


if [ -d $HOME ]
then
  echo "your home dirctory is $HOME"
  cd $HOME
  ls -la
else
 echo "there is problem in you HOME dirctory"
fi


#在if-then 中可使用(()) 包含高级数学公式 而且 不需转义 < 和 > 
numvar1=10
if (( $numvar1 * 2 > 30 ))
then
   echo "$numvar1 * 2 > 30"
elif (( $numvar1 * 2 =30 ))
then
   echo "$numvar1 *2 = 30"
else 
   echo "$numvar1 * 2 <30" 
fi


#[[]] 为字符串比较 提供高级功能
if [[ $USER == r* ]] #如果$USER 是以r开头的
then
  echo "$USER is start with r"
else
  echo "$USER is not start with r"
fi

#case
:<<!
多行注释
case var in
pattern1 | pattern2) command1;;
pattern3) command2;;
*) default commands;;
easc
!




test=6

case $test in
1 | 2 | 3 )
echo "test is $test";;
4)
echo "test is 4";;
5)
echo "test is 5";;
6)
echo "test is not 1-5"
echo "test is 6";;
*)
echo "test is not compare";;
esac





















