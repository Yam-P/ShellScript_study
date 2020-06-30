# berif: 처음에 argv를 받을 때의 값들을 임시 변수에 저장해두기
#		 set을 사용하면, $1, $2...의 값이 set이후 변수에 따라 바뀜.
#   	 다시 set을 사용하여, 처음 값에 따른 $1, $2...로 바꾸기

#!/bin/bash

echo "파일명: $0"
check=${1:?"[WARNING] argv들을 입력하세요"}
tot_args=$* # 받았던 값을 잠시 넣어두기

echo "argc(\$#): $#"

echo "First argv(\$1): $1"
echo "Second argv(\$2): $2"
# $*와 "$@"의 차이는 argv로 공백이 있는 문자를 넣을때이다.
# "$@"는 따옴포를 인식하여 따옴표를 포함한 변수를 하나로 생각한다.
# ex) ./파일명 'a bc' d e : "$@"는 묶음으로 분리, $*는 공백으로 분리
echo "Total argv(\$*):"
for i in $*
do
echo $i
done;

echo "Total argv(\"\$@\"):"
for i in "$@"
do
echo $i
done


set $(date) # 이하, 변수 번호는 date 기준으로
echo "set \$(date) 이후: 오늘은 $2 $3 $1"

set $tot_args # 받아서 저장해둔 arg들 다시 set하여 처음 받을 때처럼 동작
echo -n "set \$tot_args 이후: 다시 세팅한 결과, 각 arg 값: "
echo $1 $2 $3 $4
