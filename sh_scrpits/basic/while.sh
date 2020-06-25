#!/bin/sh

idx=0
iter=10

printf "count n (0~`expr $iter - 1`): "
while [ $idx -lt $iter ] # -lt: less than
do
	printf "$idx "

	if [ $idx -eq `expr $iter - 1` ]
	then  
		echo "\nscript complete."
		break	
	fi

	idx=`expr $idx + 1` # 주의: '이 아닌 `로!!
done


