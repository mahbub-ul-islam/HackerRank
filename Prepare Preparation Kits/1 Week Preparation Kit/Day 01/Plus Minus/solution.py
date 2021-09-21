#!/bin/python3

import math
import os
import random
import re
import sys


#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr):
    # Write your code here
    length = len(arr)
    positive = 0
    negative = 0
    zero = 0

    for value in arr:
        if (value < 0):
            negative += 1
        elif (value > 0):
            positive += 1
        elif (value == 0):
            zero += 1

    print("%.6f" % (positive / length))
    print("%.6f" % (negative / length))
    print("%.6f" % (zero / length))


if __name__ == '__main__':
    n = int(input().strip())

    arr = list(map(int, input().rstrip().split()))

    plusMinus(arr)
