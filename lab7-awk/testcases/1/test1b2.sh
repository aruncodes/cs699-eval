#!/bin/bash

#charCount <input_file>

awk -f charCount.awk sample_input2b 1> output2 2> eval_out.txt

echo "sample_output2b output2"
