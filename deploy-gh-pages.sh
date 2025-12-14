#!/bin/bash

# Script to build and deploy Jupyter Book to GitHub Pages

set -e

# Activate virtual environment
source venv/bin/activate

# Build the site
echo "Building site..."
jupyter-book build --site

# Check if gh-pages branch exists
if git show-ref --verify --quiet refs/heads/gh-pages; then
    echo "gh-pages branch exists"
    # Switch to gh-pages branch
    git checkout gh-pages
    # Remove all files except .git
    find . -maxdepth 1 ! -name '.git' ! -name '.' -exec rm -rf {} +
else
    echo "Creating gh-pages branch..."
    git checkout --orphan gh-pages
    git rm -rf .
fi

# Copy site contents to root
echo "Copying site files..."
cp -r _build/site/* .

# Add and commit
git add -A
git commit -m "Deploy site to GitHub Pages" || echo "No changes to commit"

# Push to origin
echo "Pushing to GitHub..."
git push origin gh-pages

# Switch back to main branch
git checkout main

echo "Deployment complete! Your site should be available at:"
echo "https://alexhkurz.github.io/coalgebraic-logic-jupyter/"
