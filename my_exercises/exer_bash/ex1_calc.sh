#!/bin/bash

if [ $# -ne 3 ]; then
  echo "The parameters need to be 3: n1 operator n2"
  exit 1
fi
n1=$1
ope=$2
n2=$3
if ! [[ $n1 =~ ^-?[0-9]+$ ]] || ! [[ $n2 =~ ^-?[0-9]+$ ]]; then
  echo "Error: n1 and n2 must be numbers."
  echo "Type: n1 operator n2"
  exit 1
fi
case $ope in
  +)
    result=$((n1 + n2))
    echo "The sum of $n1 and $n2 = $result"
    ;;
  -)
    result=$((n1 - n2))
    echo "The difference of $n1 and $n2 = $result"
    ;;
  x)
    result=$((n1 * n2))
    echo "The product of $n1 and $n2 = $result"
    ;;
  /)
    if [ $n2 -ne 0 ]; then
      result=$((n1 / n2))
      echo "The division of $n1 by $n2 = $result"
    else
      echo "Error: Division by zero is not allowed."
    fi
    ;;
  *)
    echo "The parameters need to be 3: n1 operator n2. Use {+, -,x , or /} as an operator."
    exit 1
    ;;
esac

