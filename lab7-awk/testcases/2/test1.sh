#!/bin/bash

#keysorter <input_file>

awk -f keysorter.awk sample_input1 1> output1 2> eval_out.txt

echo "sample_output1 output1"
