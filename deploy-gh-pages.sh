#!/bin/bash

# Script to build and deploy Jupyter Book to GitHub Pages using ghp-import

set -e

# Activate virtual environment if it exists
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
elif [ -f ".venv/bin/activate" ]; then
    source .venv/bin/activate
fi

# Build the site
echo "Building site..."
jupyter-book build --site

# Deploy using ghp-import
# -n: don't include .nojekyll file (not needed for MyST sites)
# -p: push to origin/gh-pages
# -f: force push (overwrites existing gh-pages branch)
echo "Deploying to GitHub Pages..."
ghp-import -n -p -f _build/site

echo "Deployment complete! Your site should be available at:"
echo "https://alexhkurz.github.io/introduction-to-coalgebraic-logic/"
