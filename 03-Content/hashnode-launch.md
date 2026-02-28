---
title: "I built a Chrome Extension Starter because Manifest V3 was painful"
publishedAt: "2025-01-20T12:00:00.000Z"
tags: ["javascript", "chrome-extension", "webdev", "typescript"]
canonicalUrl: "https://zovo.io/blog/chrome-extension-starter"
---

After building 18 Chrome extensions, I extracted everything I learned into a starter that handles the boilerplate so you can focus on your extension.

## The Problem

Building Chrome extensions in 2025 means dealing with:

- Manifest V3 breaking changes
- Service worker quirks
- Storage API migration
- No clear best practices

## The Solution

```bash
npx @zovo/extension-starter create my-extension
cd my-extension
npm run dev
```

## What's Included

- Manifest V3 configuration
- TypeScript support
- Hot reload
- Storage utilities
- Content script examples

## Try It

[Get started on GitHub →](https://github.com/zovo-tools/chrome-extension-starter-mv3)

---

*Built by Zovo — makers of Chrome extensions.*

