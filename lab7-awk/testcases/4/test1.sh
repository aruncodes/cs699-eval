#!/bin/bash

awk -f sort.awk -F , -v SORTKEY=2 sample_input1 1> output1 2> eval_out.txt

echo "sample_output1 output1"
