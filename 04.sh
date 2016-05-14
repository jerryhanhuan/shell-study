#!/bin/bash
# 使用反引号来获取当前日期 并用它在脚本中创建唯一的文件名
today=`date +%y%m%d` # %y%m%d 用两位数来指定年月日
ls -l >log.$today