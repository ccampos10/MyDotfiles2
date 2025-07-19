option=$1
if [ "$option" = "full" ]; then
  cpupower frequency-set -u 3.8GHz
  if [ $? -eq 0 ]; then
    echo "cpu frequence was set to 3.8GHz"
  else
    echo "An error occurred"
  fi
elif [ "$option" = "medium" ]; then
  cpupower frequency-set -u 2.6GHz
  if [ $? -eq 0 ]; then
    echo "Cpu frequence was set to 2.6GHz"
  else
    echo "An error occurred"
  fi
else
  echo "input was worng. Support input:"
  echo -e "\tfull:\tSet cpu frequence to 3.8GHz. The max power"
  echo -e "\tmedium:\tSet cpu frequence to 2.6GHz. A 70% of power"
fi
