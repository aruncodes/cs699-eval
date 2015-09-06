#!/bin/bash

awk -f substringlocator.awk -v SUB=son sample_input1 1> output1 2> eval_out.txt

echo "sample_output1 output1"
