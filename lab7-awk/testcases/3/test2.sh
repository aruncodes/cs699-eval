#!/bin/bash

#valuesorter <input_file>

awk -f valuesorter.awk sample_input2 1> output2 2> eval_out.txt

echo "sample_output2 output2"
