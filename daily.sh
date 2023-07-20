#!/bin/bash

# Function to generate a random word using the Python script
generate_random_word() {
  python3 random_word_generator.py
}

filename="daily_commit.txt"

# Generate a random word using the Python script
random_word=$(generate_random_word)

# Append the new random word to the file
echo "$random_word" >> "$filename"

# Add all changes to the staging area
git add "$filename"

# Commit with a custom commit message
git commit -m "Daily edit: $(date +%Y-%m-%d)"

# Push to the remote repository
git push
