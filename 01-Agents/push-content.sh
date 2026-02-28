#!/bin/bash
# WRITER: Create additional content for chrome-extension-starter-mv3
# Execute autonomously

echo "✍️ WRITER: Creating additional content..."

BASE="/Users/mike/minimax/infrastructure/content/published"

# 1. Dev.to optimized article with tags
cat > "$BASE/devto-mv3-guide.md" << 'EOF'
---
title: "The Complete Guide to Chrome Extension Manifest V3 in 2024"
description: "Everything you need to know about Manifest V3, from service workers to declarative net request."
tags: javascript, chrome-extension, manifest-v3, typescript, webdev
canonical_url: https://zovo.io/blog/chrome-manifest-v3-guide
published: true
---

# The Complete Guide to Chrome Extension Manifest V3 in 2024

Google'sManifest V3 is here to stay. This guide covers everything you need to build production-ready extensions.

## What's Different in MV3?

### No More Background Pages

```javascript
// MV2: Background page (always running)
chrome.runtime.onMessage.addListener((msg, sender, respond) => {
  // Handle message
});
```

```javascript
// MV3: Service worker (can be terminated)
chrome.runtime.onMessage.addListener((message, sender, sendResponse) => {
  // Handle message
  // Use chrome.storage for persistence!
});
```

### No Remote Code

```json
// MV2 - ALLOWED (soon banned)
// "content_scripts": [{
//   "js": ["https://cdn.example.com/script.js"]
// }]
```

```json
// MV3 - MUST BE BUNDLED
"content_scripts": [{
  "js": ["content.js"]  // Must be in your extension!
}]
```

### webRequest → declarativeNetRequest

```javascript
// MV2
chrome.webRequest.onBeforeRequest.addListener(
  (details) => ({ cancel: true }),
  { urls: ["*://example.com/*"] }
);
```

```json
// MV3
"permissions": ["declarativeNetRequest"],
"declarative_net_request": {
  "rule_resources": [{
    "id": "block_ads",
    "enabled": true,
    "path": "rules.json"
  }]
}
```

## Quick Start

```bash
npx degit zovo-tools/chrome-extension-starter-mv3 my-extension
cd my-extension
npm install
npm run dev
```

## Conclusion

MV3 is mandatory. Start building with Manifest V3 from day one.

[Get the starter →](https://github.com/zovo-tools/chrome-extension-starter-mv3)

---

Built by [Zovo](https://zovo.io) - 18 Chrome extensions, 50K+ users.
EOF

# 2. Hashnode article
cat > "$BASE/hashnode-mv3-typescript.md" << 'EOF'
---
title: Building Chrome Extensions with TypeScript and Manifest V3
subtitle: A modern approach to Chrome extension development
tags: [chrome-extension, typescript, manifest-v3]
published: true
---

# Building Chrome Extensions with TypeScript and Manifest V3

Chrome extensions are more relevant than ever. Here's how to build them properly in 2024.

## Why TypeScript?

Type safety catches bugs before they happen:

```typescript
interface Settings {
  theme: 'light' | 'dark';
  notifications: boolean;
}

// Full autocomplete!
chrome.storage.local.get<Settings>('settings', (result) => {
  const settings = result.settings;
});
```

## Why Manifest V3?

It's the future. MV2 is deprecated.

## Get Started

```bash
npx degit zovo-tools/chrome-extension-starter-mv3 my-extension
```

[Read more →](https://github.com/zovo-tools/chrome-extension-starter-mv3)
EOF

# 3. Medium publication draft
cat > "$BASE/medium-typescript-mv3.md" << 'EOF'
# Why I Built My Chrome Extensions with TypeScript

After building 18 Chrome extensions used by 50,000+ developers, I learned that TypeScript isn't optional anymore.

## The Problem

JavaScript extensions are hard to maintain:

- No type safety
- No autocomplete
- Runtime errors only

## The Solution

TypeScript catches errors at compile time:

```typescript
// This would fail at compile time:
const url: string = 123; // Error!
```

## Try It

Start with our starter:

```bash
npx degit zovo-tools/chrome-extension-starter-mv3 my-extension
```

[Zovo Tools](https://zovo.io) - Building browser extensions developers love.
EOF

echo "✅ WRITER: Additional content created"

echo "[WRITER] $(date): Created additional content" >> /Users/mike/minimax/agents/writer/work/writer.log
