#!/bin/bash

# Get commit message (default: "update")
msg="$1"
if [ -z "$msg" ]; then
    msg="update"
fi

echo "⚠️  Commit message: $msg"

# Get current branch name
branch=$(git rev-parse --abbrev-ref HEAD)
echo "Current branch: $branch"

# Add changes
git add .

# Commit
git commit -m "$msg"

# Push
git push origin "$branch"
