#!/bin/bash

# Check if a number was provided
if [ $# -ne 1 ] || ! [[ $1 =~ ^[0-9]+$ ]]; then
  echo "Usage: $0 <number>"
  echo "Example: $0 10 (creates folders 1 through 10)"
  exit 1
fi

N=$1

# Create folders from 1 to N
for ((i=1; i<=N; i++)); do
  FOLDER_NAME="folder_$i"
  # Create the folder structure
  mkdir -p "$FOLDER_NAME/subfolder"

# Lorem ipsum text to use
LOREM_IPSUM="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris."

  # Create README.md with i lines of lorem ipsum
  for ((j=1; j<=i; j++)); do
    echo "$LOREM_IPSUM" >> "$FOLDER_NAME/README.md"
    echo "$LOREM_IPSUM" >> "$FOLDER_NAME/subfolder/README.md"
  done
  
  echo "Created $FOLDER_NAME, $FOLDER_NAME/subfolder, and README.md with $i lines of lorem ipsum."
done

echo "Successfully created folders 1 through $N with corresponding README files."