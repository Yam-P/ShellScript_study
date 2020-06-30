#!/bin/bash

echo "Example 1 =================="
declare -i num1
num1=10+10
echo $num1

echo "Example 2 =================="
declare -i num2
num2="10 * 10"
echo $num2


echo "Example 3 =================="
declare -i x=016 # 8진수 값을 x에 할당
echo $x          # x = 8+6 = 14
x=2#101      	 # 진법#숫자
declare -i y=8#13
declare -i z=16#c
echo "2#101=" $x "8#13=" $y "16#c=" $z
