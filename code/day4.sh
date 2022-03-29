#!/bin/bash -x
outputpath=output
for file in /f/stage1-review/*.*
do
fileName=$(awk -F. '{print $1}' <<< $file)
fileType=$(awk -F. '{print $2}' <<< $file)
mkdir -p $outputpath/$fileName/$fileType && cp $file $outputpath/$fileName/$fileType
done