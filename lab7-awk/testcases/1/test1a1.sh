#!/bin/bash

#averageCharPerLine <input_file>

awk -f averageCharPerLine.awk sample_input1a 1> output1 2> eval_out.txt

echo "sample_output1a output1"
