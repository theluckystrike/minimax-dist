# Competitive Intelligence Monitoring

## Daily Checks

- [ ] npm search: "chrome extension starter"
- [ ] npm search: "manifest v3 chrome extension"
- [ ] GitHub trending: chrome-extension topic
- [ ] Product Hunt: new chrome extensions

## Weekly Analysis

- [ ] Keyword ranking changes
- [ ] Competitor updates
- [ ] Community sentiment
- [ ] New tools in space

## Competitor Tracking

| Competitor | Watch For | Alert Threshold |
|------------|-----------|-----------------|
| chrome-ext-starter | New releases | Any |
| create-chrome-extension | New features | Any |
| extensionizer | Updates | Major |

## Monitoring Tools

```bash
# npm new packages
npm search "chrome extension starter" --json | jq '.[0:10]'

# GitHub trending
curl -s https://api.github.com/search/repositories?q=chrome+extension+topic:chrome-extension | jq '.items[:10]'

# Google Alerts
# chrome extension starter
# manifest v3 chrome extension
```

## Alert Channels

- GitHub issues: theluckystrike/minimax-distribution-engine
- Discord: #minimax-alerts (if configured)
- Email: (your email)
