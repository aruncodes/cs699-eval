#!/bin/bash

#charCount <input_file>

awk -f charCount.awk sample_input1b 1> output1 2> eval_out.txt

echo "sample_output1b output1"
