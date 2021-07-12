#!/bin/bash
function Sum()
{
  echo -n "Enter First Number: "
  read a
  echo -n "Enter Second Number: "
  read b
  echo "Sum is: $(( a+b ))"       # func of add
}

Sum
