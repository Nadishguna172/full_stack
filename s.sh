#!/bin/bash

echo "Welcome to File Manipulation"
echo "Enter a file name:"
read filename
echo "Creating file..."
touch "$filename"
echo "File created successfully!"

# Display options
echo "1. View File - V"
echo "2. Update Filename - U"
echo "3. Insert Text - I"
echo "4. Search - S"
echo "5. Delete File - D"
echo "6. Exit - E"

# Infinite loop to process user choices
while true; do
    echo "Enter your choice:"
    read choice
    case "$choice" in
        "V"|"v")
            echo "Displaying contents of $filename:"
            cat "$filename"
            ;;
        "U"|"u")
            echo "Enter new filename:"
            read newfile
            mv "$filename" "$newfile"
            filename=$newfile
            echo "File renamed to $filename"
            ;;
        "I"|"i")
            echo "Enter text to insert:"
            read text
            echo "$text" >> "$filename"
            echo "Text added to $filename"
            ;;
        "S"|"s")
            echo "Enter text to search:"
            read search_text
            if grep -q "$search_text" "$filename"; then
                echo "Text found in $filename"
            else
                echo "Text not found"
            fi
            ;;
        "D"|"d")
            rm "$filename"
            echo "File $filename deleted."
            break
            ;;
        "E"|"e")
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done
