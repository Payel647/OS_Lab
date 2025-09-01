#!/bin/bash
# Script to check file type and permissions

echo "Enter file or directory name: "
read file

# Check file exists
if [ -e "$file" ]; then
    echo "✅ '$file' exists."

    # File type check
    if [ -f "$file" ]; then
        echo "Type: Regular file"
    elif [ -d "$file" ]; then
        echo "Type: Directory"
    elif [ -L "$file" ]; then
        echo "Type: Symbolic link"
    else
        echo "Type: Other"
    fi

    # Permission check
    if [ -r "$file" ]; then
        echo "Permission: Readable"
    else
        echo "Permission: Not readable"
    fi

    if [ -w "$file" ]; then
        echo "Permission: Writable"
    else
        echo "Permission: Not writable"
    fi

    if [ -x "$file" ]; then
        echo "Permission: Executable"
    else
        echo "Permission: Not executable"
    fi

else
    echo "❌ '$file' does not exist."
fi
