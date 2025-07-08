#!/bin/sh

if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required." >&2
    echo "Usage: $0 <file_path> <string_to_write>" >&2
    exit 1
fi

writefile="$1"
writestr="$2"

mkdir -p "$(dirname "$writefile")"

if ! echo "$writestr" > "$writefile"; then
    echo "Error: Could not create or write to file '$writefile'." >&2
    exit 1
fi