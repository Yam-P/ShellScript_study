#!/bin/sh

# Description --------------
# $ ./get_name.sh arg1 arg2
printf "type two names (ex: Yam Kang): "
read name1 name2

echo "# of args: ${#}"  # args 개수 출력
echo "input args: ${*}" # 모든 args 출력
# echo "input args: $1 $2 # n번째 arg 출력
echo "input names: $name1, $name2" # 입력된 변숫값 출력
