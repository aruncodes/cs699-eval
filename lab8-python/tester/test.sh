#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: ./test.sh <question-number>"
    exit
fi

if [ $1 -eq 1 ]; then
    echo "------------------------------------------------------------------------------Problem 1:"
    if [ ! -f fibindex.py ]; then
        echo "program fibindex.py -------------------------------------------------------------------------ABSENT."
    else
        python3 ./fibindex.py 13 > temp.out
        diff -Z -B ./temp.out ./output/fib1 >> /dev/null
        if [ $? -ne 0 ]; then
            echo "Testcase 1 ------------------------------------------------------------------------------FAILED"
            echo "Input: 13"
            echo "Expected output:"
            cat ./output/fib1
            echo "Actual output:"
            cat ./temp.out
            echo ""
        else
            echo "Testcase 1 ------------------------------------------------------------------------------PASSED"
        fi
        python3 ./fibindex.py 22 > temp.out
        diff -Z -B ./temp.out ./output/fib2 >> /dev/null
        if [ $? -ne 0 ]; then
            echo "Testcase 2 ------------------------------------------------------------------------------FAILED"
            echo "Input: 22"
            echo "Expected output:"
            cat ./output/fib2
            echo "Actual output:"
            cat ./temp.out
            echo ""
        else
            echo "Testcase 2 ------------------------------------------------------------------------------PASSED"
        fi
        python3 ./fibindex.py 34 > temp.out
        diff -Z -B ./temp.out ./output/fib3 >> /dev/null
        if [ $? -ne 0 ]; then
            echo "Testcase 3 ------------------------------------------------------------------------------FAILED"
            echo "Input: 34"
            echo "Expected output:"
            cat ./output/fib3
            echo "Actual output:"
            cat ./temp.out
            echo ""
        else
            echo "Testcase 3 ------------------------------------------------------------------------------PASSED"
        fi
    fi
fi



if [ $1 -eq 2 ]; then
    echo "------------------------------------------------------------------------------Problem 2:"
    if [ ! -f transpose.py ]; then
        echo "program transpose.py ABSENT."
    else
        python3 ./transpose.py ./input/trans1 > temp.out
        diff -Z -B ./temp.out ./output/trans1 >> /dev/null
        if [ $? -ne 0 ]; then
            echo "Testcase 1 ------------------------------------------------------------------------------FAILED"
            echo "Input:"
            cat  input/trans1
            echo "Expected output:"
            cat ./output/trans1
            echo "Actual output:"
            cat ./temp.out
            echo ""
        else
            echo "Testcase 1 ------------------------------------------------------------------------------PASSED"
        fi
        python3 ./transpose.py ./input/trans2 > temp.out
        diff -Z -B ./temp.out ./output/trans2 >> /dev/null
        if [ $? -ne 0 ]; then
            echo "Testcase 2 ------------------------------------------------------------------------------FAILED"
            echo "Input:"
            cat  input/trans2
            echo "Expected output:"
            cat ./output/trans2
            echo "Actual output:"
            cat ./temp.out
            echo ""
        else
            echo "Testcase 2 ------------------------------------------------------------------------------PASSED"
        fi
        python3 ./transpose.py ./input/trans3 > temp.out
        diff -Z -B ./temp.out ./output/trans3 >> /dev/null
        if [ $? -ne 0 ]; then
            echo "Testcase 3 ------------------------------------------------------------------------------FAILED"
            echo "Input:"
            cat  input/trans3
            echo "Expected output:"
            cat ./output/trans3
            echo "Actual output:"
            cat ./temp.out
            echo ""
        else
            echo "Testcase 3 ------------------------------------------------------------------------------PASSED"
        fi
    fi
fi



if [ $1 -eq 3 ]; then
    echo "------------------------------------------------------------------------------Problem 3:"
    if [ ! -f matmult.py ]; then
        echo "program matmult.py ABSENT."
    else
        python3 ./matmult.py ./input/matmult11 ./input/matmult12 temp.out
        diff -Z -B ./temp.out ./output/matmult1 >> /dev/null
        if [ $? -ne 0 ]; then
            echo "Testcase 1 ------------------------------------------------------------------------------FAILED"
            echo "Inputs:"
            paste input/matmult11 input/matmult12
            echo "Expected output:"
            cat output/matmult1
            echo "Actual output:"
            cat ./temp.out
            echo ""
        else
            echo "Testcase 1 ------------------------------------------------------------------------------PASSED"
        fi
        python3 ./matmult.py ./input/matmult21 ./input/matmult22 temp.out
        diff -Z -B ./temp.out ./output/matmult2 >> /dev/null
        if [ $? -ne 0 ]; then
            echo "Testcase 2 ------------------------------------------------------------------------------FAILED"
            echo "Inputs:"
            paste input/matmult21 input/matmult22
            echo "Expected output:"
            cat output/matmult2
            echo "Actual output:"
            cat ./temp.out
            echo ""
        else
            echo "Testcase 2 ------------------------------------------------------------------------------PASSED"
        fi
        python3 ./matmult.py ./input/matmult31 ./input/matmult32 temp.out
        diff -Z -B ./temp.out ./output/matmult3 >> /dev/null
        if [ $? -ne 0 ]; then
            echo "Testcase 3 ------------------------------------------------------------------------------FAILED"
            echo "Inputs:"
            paste input/matmult31 input/matmult32
            echo "Expected output:"
            cat output/matmult3
            echo "Actual output:"
            cat ./temp.out
            echo ""
        else
            echo "Testcase 3 ------------------------------------------------------------------------------PASSED"
        fi
    fi
fi



if [ $1 -eq 4 ]; then
    echo "------------------------------------------------------------------------------Problem 4:"
    if [ ! -f binsearch.py ]; then
        echo "program binsearch.py ABSENT."
    else
        python3 ./binsearch.py ./input/binsearch1 6 > temp.out
        diff -Z -B ./temp.out ./output/binsearch1 >> /dev/null
        if [ $? -ne 0 ]; then
            echo "Testcase 1 ------------------------------------------------------------------------------FAILED"
            echo "Inputs: 6,"
            cat input/binsearch1
            echo "Expected output:"
            cat output/binsearch1
            echo "Actual output:"
            cat ./temp.out
            echo ""
        else
            echo "Testcase 1 ------------------------------------------------------------------------------PASSED"
        fi
        python3 ./binsearch.py ./input/binsearch2 52 > temp.out
        diff -Z -B ./temp.out ./output/binsearch2 >> /dev/null
        if [ $? -ne 0 ]; then
            echo "Testcase 2 ------------------------------------------------------------------------------FAILED"
            echo "Inputs: 52,"
            cat input/binsearch2
            echo "Expected output:"
            cat output/binsearch2
            echo "Actual output:"
            cat ./temp.out
            echo ""
        else
            echo "Testcase 2 ------------------------------------------------------------------------------PASSED"
        fi
        python3 ./binsearch.py ./input/binsearch3 52 > temp.out
        diff -Z -B ./temp.out ./output/binsearch3 >> /dev/null
        if [ $? -ne 0 ]; then
            echo "Testcase 3 ------------------------------------------------------------------------------FAILED"
            echo "Inputs: 52,"
            cat input/binsearch3
            echo "Expected output:"
            cat output/binsearch3
            echo "Actual output:"
            cat ./temp.out
            echo ""
        else
            echo "Testcase 3 ------------------------------------------------------------------------------PASSED"
        fi
    fi
fi

if [ $1 -gt 4 ]; then
    if [ ! -f strings.py ]; then
            echo "program strings.py ABSENT."
    else
        if [ $1 -eq 5 ]; then
            echo "------------------------------------------------------------------------------Problem 5.1:"
            python3 ./strtester.py 1
        fi

        if [ $1 -eq 6 ]; then
            echo "------------------------------------------------------------------------------Problem 5.2:"
            python3 ./strtester.py 2
        fi

        if [ $1 -eq 7 ]; then
            echo "------------------------------------------------------------------------------Problem 5.3:"
            python3 ./strtester.py 3
        fi

        if [ $1 -eq 8 ]; then
            echo "------------------------------------------------------------------------------Problem 5.4:"
            python3 ./strtester.py 4
        fi

        if [ $1 -eq 9 ]; then
            echo "------------------------------------------------------------------------------Problem 5.5:"
            python3 ./strtester.py 5
        fi

        if [ $1 -eq 10 ]; then
            echo "------------------------------------------------------------------------------Problem 5.6:"
            python3 ./strtester.py 6
        fi
    fi
fi
