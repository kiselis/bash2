# Function to calculate absolute days difference between two dates
# Example of usage: ddif 1986-09-04 2024-05-12

ddif() {
    start_date=$(date -d "$1" +%s)
    end_date=$(date -d "$2" +%s)
    days=$(( (end_date - start_date) / 86400 ))
    abs_days=${days#-}  # If the difference is negative, the number is turned into positive
    echo "$abs_days"
}
