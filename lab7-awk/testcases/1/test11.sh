#!/bin/bash

cp test1.in Proforma
./lettergen "Manager, Systems" "Infosys" "Python" "C++" "Java" "long experience" "knowledge" "RameshG." out1  &> eval_out.txt

echo test1.out out1
