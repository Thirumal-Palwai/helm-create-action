#!/bin/sh
set -e
set -x

ChartName=$1
Path=$2

if [ -z "$Path" ]
mkdir -p $Path
fi

helm create $Path/$ChartName
