#!/bin/bash

# Iterate from test1 to test10
for i in {1..10}; do
    # Construct the JSON file path
    json_file="test/ispd2019/lefdef/ispd19_test${i}.json"
    # Construct the report file path
    report_file="report/gpu/test${i}_output.txt"
    
    # Check if the JSON file exists
    if [ -f "$json_file" ]; then
        echo "Running Placer.py for test${i}..."
        # Run the Python script with the JSON file as argument and redirect output to the report file
        python dreamplace/Placer.py "$json_file" > "$report_file" 2>&1
        echo "Output saved to: $report_file"
    else
        echo "JSON file for test${i} does not exist."
    fi
done

