---
title: "I built a Chrome Extension Starter because Manifest V3 was painful"
description: "After building 18 Chrome extensions, I extracted everything into a starter."
tags: javascript, webdev, opensource, chrome
---

## The Problem

Manifest V3 broke everything. Building Chrome extensions is now painful:
- Service workers replaced background pages
- Storage API changed
- No clear best practices

## The Solution

```bash
npx @zovo/extension-starter create my-extension
cd my-extension
npm run dev
```

## What's Included

- Manifest V3 ready
- TypeScript support
- Hot reload
- Storage utilities
- Service worker best practices

## Try It

[Get started on GitHub →](https://github.com/zovo-tools/chrome-extension-starter-mv3)

---

*Built by Zovo — makers of 18 Chrome extensions.*
