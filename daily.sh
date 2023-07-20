#!/bin/bash

# Function to generate a random word
generate_random_word() {
  # List of words you want to use for randomness
  words=("apple" "banana" "cherry" "date" "elderberry" "fig" "grape" "honeydew" "kiwi" "lemon")

  # Get the total number of words in the array
  total_words=${#words[@]}

  # Generate a random index to pick a random word from the array
  random_index=$((RANDOM % total_words))

  # Get the random word
  random_word=${words[random_index]}

  echo "$random_word"
}

filename="daily_commit.txt"

# Generate a random word
random_word=$(generate_random_word)

# Add the random word to the file
echo "$random_word" > "$filename"

# Add all changes to the staging area
git add .

# Commit with a custom commit message
git commit -m "Daily edit: $(date +%Y-%m-%d)"

# Push to the remote repository
git push
