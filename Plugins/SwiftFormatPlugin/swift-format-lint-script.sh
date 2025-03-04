#!/bin/bash

linter=$(xcrun --find swift-format)
PACKAGE_DIRECTORY=$1
CONFIG_PATH=$2

echo 'Running Lint...'

output=$("$linter" lint --parallel --configuration "${CONFIG_PATH}" -r "$PACKAGE_DIRECTORY" 2>&1)

echo "$output" | while IFS= read -r line; do
    # Match lines in the format: [file]:[line]:[column]: [level]: [message]
    if [[ $line =~ ^([^:]+):([0-9]+):([0-9]+):\ (warning|error|note):\ (.+)$ ]]; then
        file="${BASH_REMATCH[1]}"
        line_number="${BASH_REMATCH[2]}"
        column_number="${BASH_REMATCH[3]}"
        level="${BASH_REMATCH[4]}"
        message="${BASH_REMATCH[5]}"

        # Print the formatted output for Xcode
        echo "$file:$line_number:$column_number: $level: $message"
    # else
        # Handle unmatched lines
        # echo "No match for line: $line" >&2
    fi
done

echo "Lint complete"
