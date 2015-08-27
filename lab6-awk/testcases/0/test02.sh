#!/bin/bash

cp sample-input actual_output
./spellcorrector1 actual_output &> eval_out.txt

echo sample-output actual_output
