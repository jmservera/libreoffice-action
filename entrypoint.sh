#!/bin/sh -l

sh -c "$1"
time=$(date)
echo "::set-output name=time::$time"