#!/bin/bash
#usage: ./name.sh.input.year.k

input=$1
year=$2
chand=$3

#cut -f1,3,4 $input | grep $year | sort -n -k$k | tail -n1 > Max_Exp.txt

#cut -f1,3,4,5,6,7 $input | grep $year 
cut -f1,3,4,5,6,7 $input | grep $year | sort -n -k$chand | tail -n1 > Max_Exp.txt


