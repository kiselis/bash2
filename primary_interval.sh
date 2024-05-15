#!/bin/bash

# Function to list all primary numbers within selected interval. Two arguments are accepted as the lower and the higher band of the interval.
# Usage example: primary_interval 25 50

primary_interval() {
    from=$1
    to=$2

    for ((number=from; number<=to; number++)); do
        is_prime=true

        # Checking if the number is primary
        for ((i=2; i<number; i++)); do
            if ((number % i == 0)); then
                is_prime=false
                break
            fi
        done

        # A number is printed out only if it is primary
        if $is_prime; then
            echo "$number"
        fi
    done
}
