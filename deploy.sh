#!/usr/bin/env bash

set -e

JEKYLL_ENV=production bundle exec jekyll build
git branch -D gh-pages 2>/dev/null || echo "gh-pages branch not found locally."
git checkout --orphan gh-pages
git rm -rf . 2>/dev/null || echo "Workspace cleaned."
rsync -av --exclude '.git' --exclude 'deploy.sh' _site/ .
git add .
git commit -m "Site updated: $(date +%F-%T)"
git push origin gh-pages --force
git checkout main
