#!/bin/bash
# count_chars.sh - Count characters in an Application.md section
#
# Usage: ./count_chars.sh <section-name>
# Example: ./count_chars.sh "HQP Training Plan"
#
# This script extracts a section from Application.md and counts characters,
# helping verify that sections meet NSERC character limits.

if [ $# -eq 0 ]; then
    echo "Usage: $0 <section-name>"
    echo "Example: $0 'HQP Training Plan'"
    exit 1
fi

SECTION_NAME="$1"
FILE="Application.md"

if [ ! -f "$FILE" ]; then
    echo "Error: Application.md not found in current directory"
    exit 1
fi

# Extract section content between the header and the next header
# Note: This counts all characters including whitespace
section_content=$(sed -n "/^# ${SECTION_NAME}/,/^#/p" "$FILE" | sed '$d')

if [ -z "$section_content" ]; then
    echo "Error: Section '${SECTION_NAME}' not found in Application.md"
    exit 1
fi

char_count=$(echo -n "$section_content" | wc -c | tr -d ' ')

echo "Section: ${SECTION_NAME}"
echo "Character count: ${char_count}"

# Check against common NSERC limits
if [ "$char_count" -gt 12000 ]; then
    echo "⚠️  Warning: Exceeds 12,000 character limit"
elif [ "$char_count" -gt 9000 ]; then
    echo "⚠️  Warning: Exceeds 9,000 character limit"
elif [ "$char_count" -gt 6000 ]; then
    echo "⚠️  Warning: Exceeds 6,000 character limit"
elif [ "$char_count" -gt 3000 ]; then
    echo "⚠️  Warning: Exceeds 3,000 character limit"
else
    echo "✓ Within common NSERC character limits"
fi
