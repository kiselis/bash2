#!/bin/bash

# Script to find out how many days have passed from the date provided as an argument (e.g. 2024-10-16) and today
# Usage example: days 1986-09-04

days() {
  start_date="$1"
  current_date=$(date +%Y-%m-%d)
  start_seconds=$(date -d "$start_date" +%s)
  current_seconds=$(date -d "$current_date" +%s)
  days_passed=$(( (current_seconds - start_seconds) / 86400 ))
  echo $days_passed
}

days "$1"
