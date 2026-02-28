# UTM MAP

## Overview
Centralized tracking of all UTM-tagged links to Chrome Web Store extensions. Used by Optimizer to generate links and Harvester to track conversions.

---

## UTM Parameter Standards

```
utm_source    = [github|npm|devto|medium|reddit|hn|twitter|hashnode|blog|newsletter]
utm_medium    = [readme|article|comment|thread|email|profile]
utm_campaign  = [repo-name]
utm_content   = [specific-placement|optional]
```

---

## Extension Links by Source

### GitHub

| Repo | Extension | URL | UTM |
|------|-----------|-----|-----|
| chrome-extension-starter-mv3 | [TBD] | https://chromewebstore.google.com/detail/[id]?utm_source=github&utm_medium=readme&utm_campaign=chrome-extension-starter-mv3 | ✅ |
| chrome-storage-plus | [TBD] | https://chromewebstore.google.com/detail/[id]?utm_source=github&utm_medium=readme&utm_campaign=chrome-storage-plus | ✅ |
| content-script-toolkit | [TBD] | https://chromewebstore.google.com/detail/[id]?utm_source=github&utm_medium=readme&utm_campaign=content-script-toolkit | ✅ |
| extension-analytics | [TBD] | https://chromewebstore.google.com/detail/[id]?utm_source=github&utm_medium=readme&utm_campaign=extension-analytics | ✅ |
| json-toolkit | JSON Formatter Pro | https://chromewebstore.google.com/detail/[id]?utm_source=github&utm_medium=readme&utm_campaign=json-toolkit | ✅ |
| json-toolkit-cli | JSON Formatter Pro | https://chromewebstore.google.com/detail/[id]?utm_source=github&utm_medium=readme&utm_campaign=json-toolkit-cli | ✅ |
| mv3-migrate | [TBD] | https://chromewebstore.google.com/detail/[id]?utm_source=github&utm_medium=readme&utm_campaign=mv3-migrate | ✅ |
| cookie-inspector | [TBD] | https://chromewebstore.google.com/detail/[id]?utm_source=github&utm_medium=readme&utm_campaign=cookie-inspector | ✅ |
| extension-publisher | [TBD] | https://chromewebstore.google.com/detail/[id]?utm_source=github&utm_medium=readme&utm_campaign=extension-publisher | ✅ |
| grammar-check-api | BeLikeNative | https://chromewebstore.google.com/detail/[id]?utm_source=github&utm_medium=readme&utm_campaign=grammar-check-api | ✅ |

### npm

| Repo | Extension | URL | UTM |
|------|-----------|-----|-----|
| chrome-extension-starter-mv3 | [TBD] | https://chromewebstore.google.com/detail/[id]?utm_source=npm&utm_medium=readme&utm_campaign=chrome-extension-starter-mv3 | ✅ |
| chrome-storage-plus | [TBD] | https://chromewebstore.google.com/detail/[id]?utm_source=npm&utm_medium=readme&utm_campaign=chrome-storage-plus | ✅ |
| json-toolkit | JSON Formatter Pro | https://chromewebstore.google.com/detail/[id]?utm_source=npm&utm_medium=readme&utm_campaign=json-toolkit | ✅ |

### Dev.to

| Repo | Extension | Article | URL | UTM |
|------|-----------|---------|-----|-----|
| chrome-extension-starter-mv3 | [TBD] | Launch | [article-url] | ?utm_source=devto&utm_medium=article&utm_campaign=chrome-extension-starter-mv3 |
| chrome-extension-starter-mv3 | [TBD] | Tutorial | [article-url] | ?utm_source=devto&utm_medium=article&utm_campaign=chrome-extension-starter-mv3 |
| chrome-storage-plus | [TBD] | Launch | [article-url] | ?utm_source=devto&utm_medium=article&utm_campaign=chrome-storage-plus |
| json-toolkit-cli | JSON Formatter Pro | Launch | [article-url] | ?utm_source=devto&utm_medium=article&utm_campaign=json-toolkit-cli |

### Twitter/X

| Repo | Extension | Thread URL | UTM |
|------|-----------|------------|-----|
| chrome-extension-starter-mv3 | [TBD] | [thread-url] | ?utm_source=twitter&utm_medium=thread&utm_campaign=chrome-extension-starter-mv3 |
| chrome-storage-plus | [TBD] | [thread-url] | ?utm_source=twitter&utm_medium=thread&utm_campaign=chrome-storage-plus |

### Reddit

| Repo | Extension | Post URL | UTM |
|------|-----------|-----------|-----|
| chrome-extension-starter-mv3 | [TBD] | [post-url] | ?utm_source=reddit&utm_medium=post&utm_campaign=chrome-extension-starter-mv3 |

### Hacker News

| Repo | Extension | Post URL | UTM |
|------|-----------|---------|-----|
| chrome-extension-starter-mv3 | [TBD] | [post-url] | ?utm_source=hn&utm_medium=post&utm_campaign=chrome-extension-starter-mv3 |

---

## Tracking Reference

### Source Values

| Source | Description |
|--------|-------------|
| github | GitHub README, repo header |
| npm | npm package page |
| devto | Dev.to articles |
| medium | Medium articles |
| twitter | Twitter/X threads |
| reddit | Reddit posts/comments |
| hn | Hacker News |
| hashnode | Hashnode articles |
| blog | Your blog (zovo.io) |
| newsletter | Email newsletters |

### Medium Values

| Medium | Description |
|--------|-------------|
| readme | GitHub/npm README files |
| article | Blog posts, articles |
| thread | Twitter threads |
| comment | Reddit/HN comments |
| profile | GitHub profile |
| email | Newsletter content |

---

## Conversion Tracking

*To be populated after pilot launch*

| Source | Medium | Clicks | Installs | Rate |
|--------|--------|--------|----------|------|
| github | readme | - | - | - |
| npm | readme | - | - | - |
| devto | article | - | - | - |
| twitter | thread | - | - | - |
| reddit | post | - | - | - |
| hn | post | - | - | - |

---

## Link Generator Template

```javascript
// Copy this template for new links
const extensionId = '[EXTENSION-ID]';
const source = '[github|npm|devto|...]';
const medium = '[readme|article|comment|...]';
const campaign = '[repo-name]';

const utmLink = `https://chromewebstore.google.com/detail/${extensionId}?utm_source=${source}&utm_medium=${medium}&utm_campaign=${campaign}`;
```

---

*Last updated: 2025-01-20*
*Managed by: OPTIMIZER Agent*
*Tracking: HARVESTER Agent*
