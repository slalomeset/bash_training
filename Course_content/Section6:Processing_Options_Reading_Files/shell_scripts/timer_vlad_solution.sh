#!/bin/bash

# getopts gets option command here either -c or -f"
while getopts "m:s:" option; 
do
    case "$option" in
        s) result=$OPTARG;;
        m) result=$(( $OPTARG*60 ));;
        \?) echo "enter either Celsius option -c 20 or Farenheit -f 15";;
    esac
done

while [ $result -gt 0 ];
do
    echo $result
    sleep 1
    result=$(( $result-1 ))
done;

echo "Time's Up!"
