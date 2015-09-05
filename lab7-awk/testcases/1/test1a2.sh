#!/bin/bash

#averageCharPerLine <input_file>

awk -f averageCharPerLine.awk sample_input2a 1> output2 2> eval_out.txt

echo "sample_output2a output2"
