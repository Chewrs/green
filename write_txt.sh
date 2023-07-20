#!/bin/bash
filename="daily_commit.txt"
if [ ! -f "$filename" ]; then
  touch "$filename"
fi
nano "$filename"
# Add all changes to the staging area
git add .

# Commit with a custom commit message
git commit -m "Daily edit: $(date +%Y-%m-%d)"

git push 