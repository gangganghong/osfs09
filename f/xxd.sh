#! /bin/bash
echo $0
#echo $1
#echo $2
arg1=$1
arg2=$2
#if [ ! $arg1  || ! $arg2 ]
if [[ ! $arg1  && ! $arg2 ]]
then
	# xxd -u -a -g 1 -c 16 -s $arg1 -l 512 $arg2
	echo "usage: ./xxd.sh 跳过的字节 文件名"
else
	# echo "usage: ./xxd.sh 跳过的字节 文件名"
	xxd -u -a -g 1 -c 16 -s $arg1 -l 512 $arg2
fi
