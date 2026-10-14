
#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"
echo "--------------------------"

read -p "Enter principal amount: " principal
read -p "Enter rate of interest (% per year): " rate
read -p "Enter time period (in years): " time

interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "Simple Interest: $interest"
echo "Total Amount: $total"
