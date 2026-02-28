---
title: "Why Manifest V3 is Mandatory and How to Migrate"
description: "Chrome is ending Manifest V2 support. Here's everything you need to know about MV3 and how to migrate."
tags: [chrome-extension, manifest-v3, migration, webdev]
canonical_url: "https://zovo.io/blog/why-manifest-v3-matters"
---

# Why Manifest V3 is Mandatory and How to Migrate

Google made it official: **Manifest V2 extensions are on borrowed time**. Here's what MV3 means for you.

## The Timeline

- **January 2023**: New MV2 extensions rejected from Chrome Web Store
- **June 2023**: MV2 extensions can't be updated
- **2024**: MV2 fully deprecated

If you're still on MV2, your extension will stop working.

## What Changed in Manifest V3?

### 1. Background Pages → Service Workers

```javascript
// MV2 (background.js)
chrome.runtime.onMessage.addListener((msg, sender, respond) => {
  // Handle message
});
```

```typescript
// MV3 (background service worker)
chrome.runtime.onMessage.addListener((message, sender, sendResponse) => {
  // Handle message
  // Service worker can be terminated between messages!
});
```

### 2. Remote Code → Bundled Only

```json
// MV2 - ALLOWED (but soon banned)
// "code": "https://example.com/script.js"
```

```json
// MV3 - ONLY BUNDLED
"content_scripts": [{
  "js": ["content.js"]  // Must be in extension!
}]
```

### 3. webRequest → declarativeNetRequest

```javascript
// MV2 - Blocking
chrome.webRequest.onBeforeRequest.addListener(
  (details) => ({ cancel: true }),
  { urls: ["*://example.com/*"] }
);
```

```json
// MV3 - Declarative
"permissions": ["declarativeNetRequest"],
"declarative_net_request": {
  "rule_resources": [{
    "id": "ruleset_1",
    "enabled": true,
    "path": "rules.json"
  }]
}
```

## Migration Checklist

- [ ] Update manifest_version to 3
- [ ] Convert background to service worker
- [ ] Replace webRequest with declarativeNetRequest
- [ ] Remove remote code references
- [ ] Update cookie permissions
- [ ] Test in Manifest V3 mode

## Use Our Starter

Skip the migration pain with our MV3-native starter:

```bash
npx degit zovo-tools/chrome-extension-starter-mv3 my-extension
```

Built with MV3 from day one. No migration needed.

---

Questions about migration? [Open an issue](https://github.com/zovo-tools/chrome-extension-starter-mv3/issues)
