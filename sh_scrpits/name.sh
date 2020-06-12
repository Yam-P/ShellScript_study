#!/bin/sh

name="YamP"

# script 내에서는 환경변수로 세팅 되지만, 종료 후에 변수는 사라진다.
export name
echo $name
