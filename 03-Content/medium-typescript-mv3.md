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
