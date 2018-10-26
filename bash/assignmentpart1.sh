#!bin/bash
#
sum=0
while [[ $count -gt 0 ]]; do #loop
  case $1 in
    -c | --count ) shift #sets the count command
      if [[$1 -lt 1]]; then #range checking
        echo "Please enter a number greater than 1"
        exit 1 #exits with an error
      elif [[$1 -gt 9]]; then #range checking
        echo "Please enter a number less than 9"
        exit 1
      fi
      count=$1
      ;;
  esac
  case $2 in
    -s | --sides ) shift #sets the sides command
    if [[ $2 -lt 4 ]]; then #range checking
      echo "Please enter a number greater than 4"
      exit 1
    elif [[$2 -gt 20]]; then #range checking
      echo "Please enter a number less than 20"
      exit 1
    fi
      sides=$2
      ;;
  esac
  case $3 in
    -h | --help )
      echo "Ple"
      exit 0
      ;;
  esac
  shift
    roll=$(( $RANDOM % $sides +1 ))
    sum=$(( $sum + $roll ))
    echo "Rolled $roll"
    count=$((count - 1))
done
echo "You rolled a total of $sum"
