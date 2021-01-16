#!/bin/bash

for i in `awk ' { print $1 } '  cars | sort | uniq`
        do
        num=`awk ' {print $1}'  cars | grep $i | wc -l`
        echo $i $num
        done


