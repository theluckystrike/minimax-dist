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
