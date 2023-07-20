#!/bin/bash

# Change to your project directory
cd /path/to/your/project

# Get the commit message from the user input in the text file
read -r commit_message < commit_message.txt

# Create a new file with the current date as the filename
touch $(date +%Y-%m-%d).txt

# Add the new file to the staging area
git add .

# Commit with the custom commit message
git commit -m "$commit_message"

# Push changes to the remote repository (e.g., origin)
git push origin main
