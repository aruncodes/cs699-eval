#!/bin/bash

cp sample-input.tex actual_output
./latexbeautifier3 actual_output &> eval_out.txt

echo sample-output.tex actual_output
