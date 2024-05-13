#!/bin/bash

# Function to calculate difference in minutes between two times specified as function arguments. Arguments should be specified in this format: "YYYY-MM-DD hh:mm"
# Usage: sdif "2024-05-12 19:00" "2024-05-13 19:03"
# Result: 1443

sdif() {
    start_date=$(date -d "$1" +%s)
    end_date=$(date -d "$2" +%s)
    minutes=$(( (end_date - start_date) / 60 ))
    abs_minutes=${minutes#-}
    echo "$abs_minutes"
}
