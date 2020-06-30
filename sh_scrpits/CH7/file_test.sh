#!/bin/bash

if [ -z $1 ]
then
	echo arg로 파일명을 함께 입력하세요
	exit 1
fi

if [ -d $1 ]
then
	echo $1"은 dir입니다."

elif [ -f $1 ]
then
	if [[ -r $1 && -w $1 ]]
	then
		echo \"$1\""은 읽기, 쓰기가 가능한 file입니다."
	fi
fi
