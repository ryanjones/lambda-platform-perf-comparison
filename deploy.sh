#!/bin/bash
declare -a folders=("ruby25")

ROOT_DIR=$(pwd)
for folder in "${folders[@]}"
do
  cd $folder
  ./build.sh
  cd ..
done

sls deploy | egrep -o "(http(s)?://){1}[^'\"]+" >> $ROOT_DIR/apis.txt
