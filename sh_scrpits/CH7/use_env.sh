#!/bin/bash

# brief: Using echo function, output ENV vars

echo "$LOGNAME님 안녕하세요."
echo "현재 dir은 `pwd`입니다." # 외부 명령어를 문법 사이에 사용시 '가 아닌 `
echo "접속해있는 시스템명은 `uname -n`입니다."
echo "현재 파일 dir의 목록==============================="
ls -al
echo "==================================================="
echo "현재시간: `date`"



