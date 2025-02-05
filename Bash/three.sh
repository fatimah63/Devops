#!/bin/bash

touch file.txt


newfile=file.txt

if [ -e $newfile ];then
echo "This file exists."
cat $newfile
ls -l $newfile
else
  echo "This file does not exist. Try again later"
fi


