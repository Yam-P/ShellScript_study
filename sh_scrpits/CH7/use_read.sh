#!/bin/bash

echo "Question 1"
echo -e "행복하세요?: \c" # excape를 허용하는 옵션(\c를 이용하면 다음줄로 안넘어감)
read answer # answer에 해당하는 변수 값을 입력받기
echo "\"$answer\"이라고 답변하셨습니다."

echo "Question 2"
echo -e "이름이 무엇입니까? \c"
read last first
echo "안녕하세요? \"$first$last\"님!"

echo "Question 3"
echo -n "어디 사세요? " # -e옵션과 \c를 준 것과 같은 옵션. 줄바꿈 없음
read
echo \"$REPLY\"에 사시는 군요! # 만약 read 다음 받을 변수가 없다면, REPLAY에 입력

echo "Question 4"
read -p "사용하시는 리눅스 배포판은 무엇인가요?: " linux
# 메세지와 input을 동시에 받기
echo \"$linux\"를 사용하시는 군요!

echo "Question 5"
echo -n "좋아하는 과일을 세가지 적어주세요: "
read -a fruits # 입력값을 배열 형식으로 받기
echo "\"${fruits[2]}\"를 마지막으로 적었네요!"


