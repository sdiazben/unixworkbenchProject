#!/usr/bin/env bash

function guessingGame(){
        condition=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please enter your guess:"
        read  number
        if [[ $number -lt condition ]]
        then
            echo "you guessed less"
        elif [[ $number -gt condition ]]
        then
            echo "you guessed more"
        else
            echo "You got it!"
        break;
        fi
    done
}
echo "Hello! This is a fun game to guess the number of files in the current directory"
guessingGame