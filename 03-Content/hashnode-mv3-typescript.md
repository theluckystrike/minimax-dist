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
