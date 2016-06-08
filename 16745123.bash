#!/bin/bash
m=$1         
n=$2          
r=1            

until [ $r == 0 ]
do
   let "r =$m % $n"
   m=$n
   n=$r
done

echo "$m"
