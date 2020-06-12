#!/bin/sh

printf "100 + 100 = "
n=`expr 100 + 100` # 산술 연산시 `expr ~` 사용
echo $n
