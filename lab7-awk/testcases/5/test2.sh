#!/bin/bash

awk -f substringlocator.awk -v SUB=tion sample_input2 1> output2 2> eval_out.txt

echo "sample_output2 output2"
