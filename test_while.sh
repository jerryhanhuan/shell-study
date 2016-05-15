#!/bin/bash

var=10

while [ $var -gt 0 ]
do
  echo "var is $var"
  var=$[$var -1]
done


#until 只有条件非TRUE 才会执行

var=100
until [ $var -eq 0 ]
do
  echo "var is $var"
  var=$[ $var-25 ]
done



