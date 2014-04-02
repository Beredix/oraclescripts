#!/bin/bash
ASMDISK=`dd if=$1 bs=4096 status=noxfer count=1 2>/dev/null | od -c -w32|grep 0000040|sed 's/0000040//;s/ //g;s/\\\0.*//'`
ASMDISKGROUP=`dd if=$1 bs=4096 status=noxfer count=1 2>/dev/null|od -c -w32|grep 000140|sed 's/\\\0//g'|sed 's/^[0-9]*[^0-9
]//'|sed 's/ *//g'`
echo $1 $ASMDISK $ASMDISKGROUP
