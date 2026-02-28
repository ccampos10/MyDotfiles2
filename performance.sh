#!/bin/bash

#windows use 3.8GHz for 100%, but use 2.44GHz to apply any %. Windows thinks

option=$1
if [ "$option" = "full" ]; then
  cpupower frequency-set -u 3.8GHz
  if [ $? -eq 0 ]; then
    echo "cpu frequence was set to 3.8GHz"
  else
    echo "An error occurred"
  fi
elif [ "$option" = "hight" ]; then
  cpupower frequency-set -u 2.6GHz
  if [ $? -eq 0 ]; then
    echo "Cpu frequence was set to 2.6GHz"
  else
    echo "An error occurred"
  fi
elif [ "$option" = "medium" ]; then
  cpupower frequency-set -u 2.0GHz
  if [ $? -eq 0 ]; then
    echo "Cpu frequence was set to 2.0GHz"
  else
    echo "An error occurred"
  fi
elif [ "$option" = "low" ]; then
  cpupower frequency-set -u 1.6GHz
  if [ $? -eq 0 ]; then
    echo "Cpu frequence was set to 1.6GHz"
  else
    echo "An error occurred"
  fi
elif [ "$option" = "minimum" ]; then
  cpupower frequency-set -u 1.22GHz
  if [ $? -eq 0 ]; then
    echo "Cpu frequence was set to 1.22GHz"
  else
    echo "An error occurred"
  fi
elif [ "$option" = "check" ]; then
  cpupower frequency-info
  if [ $? -eq 0 ]; then
    echo ""
  else
    echo "An error occurred"
  fi
else
  echo "input was worng. Support input:"
  echo -e "\tfull:\tSet cpu frequence to 3.8GHz. The max power"
  echo -e "\thight:\tSet cpu frequence to 2.6GHz. A 70% of power"
  echo -e "\tmedium:\tSet cpu frequence to 2.0GHz. A 53% of power"
  echo -e "\tlow:\tSet cpu frequence to 1.6GHz. A 42% of power"
  echo -e "\tminimum:Set cpu frequence to 1.22GHz. A 32% of power"
  echo -e "\tcheck:\tGet cpu frequence"
fi
