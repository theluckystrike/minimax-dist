# CROSS-LINKS MATRIX

## Overview
Internal linking strategy between all repos. Every repo should link to related repos, creating a web of discovery and SEO value.

---

## Link Map

### chrome-extension-starter-mv3

```
├── uses → chrome-storage-plus (dependency)
├── uses → content-script-toolkit (dependency)  
├── uses → extension-analytics (optional)
├── see also → mv3-migrate
├── see also → extension-publisher
└── built with → [Zovo extensions]
```

### chrome-storage-plus

```
├── powers → chrome-extension-starter-mv3
├── powers → content-script-toolkit
├── powers → extension-analytics
├── related → json-toolkit (JSON storage)
├── related → mv3-migrate (storage migration)
└── see also → Tab Suspender Pro (uses storage)
```

### content-script-toolkit

```
├── powers → chrome-extension-starter-mv3
├── powers → [all content-script extensions]
├── related → chrome-storage-plus (message passing)
├── related → extension-analytics
└── see also → [Extensions with content scripts]
```

### extension-analytics

```
├── powers → chrome-extension-starter-mv3 (optional)
├── powers → [all Zovo extensions]
├── related → chrome-storage-plus (data storage)
└── see also → [Extensions wanting analytics]
```

### json-toolkit

```
├── related → json-toolkit-cli (CLI version)
├── related → chrome-storage-plus (JSON storage)
├── browser version → JSON Formatter Pro (extension)
└── built with → chrome-extension-starter-mv3
```

### json-toolkit-cli

```
├── related → json-toolkit (browser version)
├── related → chrome-storage-plus (JSON storage)
├── browser version → JSON Formatter Pro (extension)
└── built with → chrome-extension-starter-mv3
```

### mv3-migrate

```
├── related → chrome-extension-starter-mv3
├── related → chrome-storage-plus
├── related → content-script-toolkit
├── powers → [existing Zovo V2 extensions]
└── see also → extension-publisher
```

### cookie-inspector

```
├── related → chrome-extension-starter-mv3
├── related → chrome-storage-plus
└── see also → [Extensions managing cookies]
```

### extension-publisher

```
├── related → chrome-extension-starter-mv3
├── uses → chrome-storage-plus
└── powers → [CI/CD for all extensions]
```

### grammar-check-api

```
├── powers → BeLikeNative (extension)
├── related → chrome-extension-starter-mv3
└── see also → [Apps using grammar checking]
```

---

## README "See Also" Template

Add this section to every README:

```markdown
## Related Projects

### From Zovo
- [chrome-extension-starter-mv3](link) - The starter that powers this tool
- [chrome-storage-plus](link) - Storage utilities
- [extension-analytics](link) - Privacy-first analytics

### From the Community
- [Related Project 1](link) - Description
- [Related Project 2](link) - Description

### extensions Using This
- [Extension Name](link) - Description
```

---

## Cross-Promo Opportunities

| Repo | Can Link To | Mutual Promo |
|------|-------------|---------------|
| chrome-extension-starter-mv3 | All packages | ✅ |
| chrome-storage-plus | All packages, extensions | ✅ |
| json-toolkit-cli | json-toolkit, extension | ✅ |
| mv3-migrate | starter, publisher | ✅ |
| extension-publisher | starter, all extensions | ✅ |

---

## Link Quality Rules

1. **Relevance first** — Only link genuinely related projects
2. **Bidirectional where possible** — Ask for return links
3. **Contextual placement** — Link in relevant sections
4. **No broken links** — Verify quarterly
5. **Descriptive anchor text** — Not just "click here"

---

## Maintenance

- **Monthly:** Verify all cross-links still work
- **Quarterly:** Request new cross-links from partners
- **On launch:** Add new repo to all relevant siblings

---

*Last updated: 2025-01-20*
*Managed by: OPTIMIZER Agent*
