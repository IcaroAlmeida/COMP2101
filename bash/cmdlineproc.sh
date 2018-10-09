#!/bin/bash

# This script displays whatever was on the command line nicely

echo "There are $# arguments on your command line."

while [ $# -gt 0 ]; do
  echo "Found '$1'"
  shift
  echo "There are $# command lines on the process."
done
