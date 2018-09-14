#!/bin/bash
declare -a folders=("csharp2" "fsharp2" "go" "java" "python" "python3" "nodejs4" "nodejs6" "nodejs8")

ROOT_DIR=$(pwd)
for folder in "${folders[@]}"
do
  cd $folder
  ./build.sh
  cd ..
done

sls deploy | egrep -o "(http(s)?://){1}[^'\"]+" >> $ROOT_DIR/apis.txt
