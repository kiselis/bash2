#!/bin/bash

# Selects random arguments out of provided ones
# Usage example 
# get_random_argument Jonas Vilnius "Baden Baden"
# or
# ./random_argument.sh Jonas Vilnius "Baden Baden"

get_random_argument() {
    local randoms=("$@")

    # Checking if at least one argument is provided
    if [ ${#randoms[@]} -eq 0 ]; then
        echo "Please provide at least one argument"
        return
    fi

    # Random selection of one argument from provided ones
    local random_index=$((RANDOM % ${#randoms[@]}))
    local random_var=${randoms[$random_index]}
    echo "Randomly selected argument is: $random_var"
}

# Calling the function with all provided arguments
get_random_argument "$@"
