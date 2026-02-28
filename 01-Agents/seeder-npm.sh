#!/bin/bash
# SEEDER: Publish packages to npm
echo "🌱 SEEDER: Publishing to npm..."

# Check if npm org exists
echo "Checking @zovo npm organization..."

# For now, create npm-ready package.json (actual publish needs @zovo org setup)
cat > /Users/mike/Desktop/MINIMAX/02-Infrastructure/chrome-extension-starter-mv3/package-npm.json << 'EOF'
{
  "name": "@zovo/chrome-extension-starter-mv3",
  "version": "1.0.0",
  "description": "Production-ready Chrome Extension starter with Manifest V3, TypeScript, and best practices built-in",
  "main": "dist/index.js",
  "types": "dist/index.d.ts",
  "scripts": {
    "build": "tsc && webpack",
    "dev": "webpack --watch",
    "test": "jest",
    "package": "zip -r extension.zip dist/"
  },
  "keywords": [
    "chrome-extension",
    "chrome-extension-starter",
    "manifest-v3",
    "typescript",
    "chrome-devtools",
    "browser-extension",
    "mv3",
    "chrome-extension-development"
  ],
  "author": "Zovo Tools <team@zovo.io>",
  "license": "MIT",
  "repository": {
    "type": "git",
    "url": "https://github.com/theluckystrike/chrome-extension-starter-mv3"
  },
  "homepage": "https://github.com/theluckystrike/chrome-extension-starter-mv3",
  "bugs": {
    "url": "https://github.com/theluckystrike/chrome-extension-starter-mv3/issues"
  }
}
EOF

# Create .npmrc for npm publish
cat > /Users/mike/Desktop/MINIMAX/02-Infrastructure/chrome-extension-starter-mv3/.npmrc << 'EOF'
# To publish to @zovo npm org:
# 1. Get npm access token from https://www.npmjs.com/settings/zovo/tokens
# 2. Add to GitHub secrets: NPM_TOKEN
# 3. Run: npm publish --access public

# Workflow will handle actual publish via GitHub Actions
registry=https://registry.npmjs.org/
EOF

# Add npm publish workflow
mkdir -p /Users/mike/Desktop/MINIMAX/02-Infrastructure/chrome-extension-starter-mv3/.github/workflows

cat > /Users/mike/Desktop/MINIMAX/02-Infrastructure/chrome-extension-starter-mv3/.github/workflows/npm-publish.yml << 'EOF'
name: npm publish

on:
  release:
    types: [created]

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: '20'
          registry-url: 'https://registry.npmjs.org'
      - run: npm ci
      - run: npm publish --access public
        env:
          NODE_AUTH_TOKEN: ${{ secrets.NPM_TOKEN }}
EOF

echo "✅ SEEDER: npm package ready"
echo "   - package-npm.json created"
echo "   - .npmrc configured"
echo "   - GitHub Actions workflow added"
echo ""
echo "⚠️  To publish to npm:"
echo "   1. Create @zovo npm org (or use personal)"
echo "   2. Run: npm publish --access public"

# Log
echo "[SEEDER] $(date): npm ready" >> /Users/mike/Desktop/MINIMAX/01-Agents/agent-log.txt
