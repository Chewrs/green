#!/bin/bash

# Change to your project directory
cd /path/to/daily-commits

# Define the filename for the daily commit
filename="daily_commit.txt"

# Check if the file exists; if not, create it
if [ ! -f "$filename" ]; then
  touch "$filename"
fi

# Read the commit message from the text file
read -r commit_message < "$filename"

# Add the file to the staging area
git add "$filename"

# Commit with the custom commit message
git commit -m "$commit_message"

# Push changes to the remote repository (e.g., origin)
git push origin main
