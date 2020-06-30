#!/bin/bash

# if [ ]는 c와 다르게 -nt, -ot, -ef .. (503p)
# if [[ ]]는 c와 같이 != == >= 과 같은 명령어 사용 가능
if (( $# != 1  ))
then
	echo "# of input var:" $#
fi

echo "Question 1================"
echo -n "Are you o.k. (y/n)?: "
read answer
if [ "$answer" = Y -o "$answer" = y ]
then
	echo "$answer이라고 대답했군. 종료값은 1"
	exit 1
elif [[ "$answer" == [Nn]* ]]
then
	echo "부정적이군. 종료값은 2"
	exit 2
else
	echo "예상 외의 답변이군"
fi


