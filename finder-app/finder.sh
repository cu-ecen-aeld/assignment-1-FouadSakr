#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required." >&2
    echo "Usage: $0 <directory_path> <string_to_search>" >&2
    exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
    echo "Error: '$filesdir' is not a directory." >&2
    exit 1
fi

num_files=$(find "$filesdir" -type f | wc -l)
num_matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are ${num_files} and the number of matching lines are ${num_matching_lines}"

