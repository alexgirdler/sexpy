#!/bin/bash

if [ "$@" = "ruby" ]; then
  COMMAND="./sexpy.rb"
else
  COMMAND="./sexpy.cpp"
fi


for test in $(find tests -type f | cut -d '.' -f 1 | uniq); do
  $COMMAND < $test.in | diff $test.out -
done
