# 🚀 Chrome Extension Starter MV3

> Production-ready Chrome Extension starter with Manifest V3, TypeScript, and best practices built-in

[![npm version](https://img.shields.io/npm/v/@zovo/chrome-extension-starter-mv3)](https://www.npmjs.com/package/@zovo/chrome-extension-starter-mv3)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.3-blue)](https://www.typescriptlang.org/)
[![Manifest V3](https://img.shields.io/badge/Manifest-V3-green)](https://developer.chrome.com/docs/extensions/mv3/intro/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow)](https://opensource.org/licenses/MIT)
[![GitHub stars](https://img.shields.io/github/stars/zovo-tools/chrome-extension-starter-mv3)](https://github.com/zovo-tools/chrome-extension-starter-mv3)
[![GitHub forks](https://img.shields.io/github/forks/zovo-tools/chrome-extension-starter-mv3)](https://github.com/zovo-tools/chrome-extension-starter-mv3)

## Why This Starter?

Building Chrome extensions from scratch is painful. This starter gives you:

- ✅ **Manifest V3** - Future-proof your extension
- ✅ **TypeScript** - Type safety out of the box
- ✅ **Hot Reload** - Develop faster with auto-reload
- ✅ **Analytics Ready** - Built-in extension analytics integration
- ✅ **Production Build** - Optimized webpack build

## Quick Start

```bash
# Clone the starter
npx degit zovo-tools/chrome-extension-starter-mv3 my-extension

# Navigate to project
cd my-extension

# Install dependencies
npm install

# Start development
npm run dev
```

## Features

| Feature | Description |
|---------|-------------|
| Manifest V3 | Latest Chrome extension manifest |
| TypeScript | Full type support |
| Service Workers | Modern background handling |
| Content Scripts | Easy DOM manipulation |
| Popup | Popup UI ready to go |
| Storage | Chrome.storage wrapper included |
| Analytics | Built-in privacy-first analytics |

## Project Structure

```
my-extension/
├── src/
│   ├── background/    # Service worker
│   ├── content/       # Content scripts
│   ├── popup/         # Popup UI
│   └── shared/        # Shared types
├── dist/              # Built extension
├── manifest.json      # Extension manifest
├── webpack.config.js  # Build config
└── package.json       # Dependencies
```

## Available Commands

| Command | Description |
|---------|-------------|
| `npm run dev` | Start development with hot reload |
| `npm run build` | Build production extension |
| `npm run package` | Create ZIP for Chrome Web Store |

## Documentation

- [Getting Started](docs/getting-started.md)
- [Manifest V3 Migration Guide](docs/migration.md)
- [Content Scripts](docs/content-scripts.md)
- [Service Workers](docs/service-workers.md)
- [Storage](docs/storage.md)
- [Publishing to Chrome Web Store](docs/publishing.md)

## Related Projects

- [chrome-storage-plus](https://github.com/zovo-tools/chrome-storage-plus) - Type-safe Chrome storage
- [content-script-toolkit](https://github.com/zovo-tools/content-script-toolkit) - Content script utilities
- [extension-analytics](https://github.com/zovo-tools/extension-analytics) - Privacy-first analytics

## Built by Zovo 🚀

We build browser extensions used by 50,000+ developers.

Love this starter? Try our Chrome extensions:
- [JSON Formatter Pro](https://chromewebstore.google.com/detail/json-formatter-pro) — Beautiful JSON in your browser
- [Tab Suspender Pro](https://chromewebstore.google.com/detail/tab-suspender-pro) — Save memory, manage tabs

[See all Zovo extensions →](https://chromewebstore.google.com/search/publisher/Zovo%20Tools)

## Contributing

1. Fork the repo
2. Create your feature branch (`git checkout -b feature/amazing`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing`)
5. Open a Pull Request

## License

MIT © [Zovo Tools](https://zovo.io)
