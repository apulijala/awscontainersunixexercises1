#!/bin/bash

for i in `awk ' { print $3 } '  cars | sort | uniq`
        do
        num=`awk ' {print $3}'  cars | grep $i | wc -l`
        echo $i $num
        done


