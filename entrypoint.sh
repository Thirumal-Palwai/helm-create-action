#!/bin/sh
set -x

ChartName=$1
Path=$2

if [ ! -z "$Path" ]
then
mkdir -p ./$Path
fi

helm create ./$Path/$ChartName
