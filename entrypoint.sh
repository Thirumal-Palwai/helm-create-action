#!/bin/sh
set -e
set -x

parameters=$1

helm create $parameters
