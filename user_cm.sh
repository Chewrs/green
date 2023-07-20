#!/bin/bash

# Prompt the user to enter a custom commit message
read -p "Enter your custom commit message: " commit_message

# Add all changes to the staging area
git add .

# Commit with the custom commit message
git commit -m "Daily edit: $(date +%Y-%m-%d) - $commit_message"

# Push the changes to the remote repository
git push
