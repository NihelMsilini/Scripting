#!/bin/bash
#sort file per user's name in users.txt
ps aux --sort -user >  users.txt
#use awk to extract the first field $1 of the user name
 awk 'BEGIN { FS = " " }
    { print  $1 }             
          ' users.txt  > proc_file.txt
# count the processors number with no repeating the users name
cat proc_file.txt| sort | uniq -c > processors.txt
awk 'BEGIN { FS = " " }
    { print $2 " has " $1 " currently running processors.." }             
' processors.txt
