#!/bin/bash

# Navigate to repo
cd /path/to/daily-progress || exit

# Get today's date
BRANCH_NAME=$(date +'%Y-%m-%d')

# Fetch latest changes
git fetch origin

# Create a new branch for today
git checkout -b "$BRANCH_NAME"

# Add changes
git add .

# Commit with a timestamp
git commit -m "Daily update: $BRANCH_NAME"

# Push the branch
git push origin "$BRANCH_NAME"

echo "Update pushed to branch: $BRANCH_NAME"
