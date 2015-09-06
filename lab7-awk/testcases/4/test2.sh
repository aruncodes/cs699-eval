#!/bin/bash

awk -f sort.awk -v SORTKEY=1 sample_input2 1> output2 2> eval_out.txt

echo "sample_output2 output2"
