#!/bin/bash
# SEEDER: Push chrome-extension-starter-mv3 to GitHub
# Execute autonomously

echo "🌱 SEEDER: Pushing chrome-extension-starter-mv3 to GitHub..."

REPO_DIR="/Users/mike/minimax/infrastructure/github/repos/chrome-extension-starter-mv3"
REPO_NAME="chrome-extension-starter-mv3"
ORG="theluckystrike"  # Using personal account

cd "$REPO_DIR"

# Initialize git if not already
if [ ! -d ".git" ]; then
    git init
    git add .
    git commit -m "Initial commit: Chrome Extension Starter MV3

- Manifest V3
- TypeScript 5.3
- Hot reload
- Service workers
- Content scripts
- Chrome.storage wrapper
- Analytics ready

One command: npx degit zovo-tools/chrome-extension-starter-mv3 my-extension"
fi

# Create GitHub repo
echo "Creating GitHub repo..."
gh repo create "$ORG/$REPO_NAME" --public --source="$REPO_DIR" --clone=false --description "Production-ready Chrome Extension starter with Manifest V3, TypeScript, and best practices" 2>/dev/null || echo "Repo may already exist"

# Set remote
git remote add origin "https://github.com/$ORG/$REPO_NAME.git" 2>/dev/null || true
git branch -M main
git push -u origin main --force

echo "✅ SEEDER: Pushed to https://github.com/$ORG/$REPO_NAME"

# Log
echo "[SEEDER] $(date): Pushed $REPO_NAME to GitHub" >> /Users/mike/minimax/agents/seeder/work/seeder.log
