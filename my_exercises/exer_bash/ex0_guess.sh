##!/bin/bash
i=1
echo "The total number of parameters is: $#"
for a in "$@"; do
  echo "Parameter #$i"":$a"
  i=$((i+1))
done


