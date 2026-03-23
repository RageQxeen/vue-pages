#!/bin/sh
set -e

# Build Vue project
npm run build

# Navigate to build folder
cd dist

# Initialize Git
git init
git add -A
git commit -m "Deploy Vue app to GitHub Pages"

# Push to gh-pages branch
git push -f <repo-url> master:gh-pages

# Go back to project root
cd -

chmod +x deploy.sh