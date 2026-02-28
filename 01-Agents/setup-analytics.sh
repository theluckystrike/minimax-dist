#!/bin/bash
# HARVESTER: Set up analytics and tracking
# Execute autonomously

echo "📊 HARVESTER: Setting up analytics..."

BASE="/Users/mike/minimax/infrastructure"

# 1. Create metrics tracking
cat > "$BASE/analytics/READY_METRICS.md" << 'EOF'
# Metrics Tracking - Ready

## GitHub (check weekly)
```bash
# Stars
gh view theluckystrike/chrome-extension-starter-mv3 --json stargazerCount

# Forks
gh view theluckystrike/chrome-extension-starter-mv3 --json forkCount

# Traffic
gh api repos/theluckystrike/chrome-extension-starter-mv3/traffic/views
```

## npm (check daily)
```bash
npm view @zovo/chrome-extension-starter-mv3
```

## UTM Tracking (check weekly)
- Use Bitly or custom short URL
- Track in Google Sheets
- Log all clicks

## Weekly Report Template

| Metric | Week 1 | Week 2 | Week 3 | Week 4 |
|--------|--------|--------|--------|--------|
| GitHub Stars | | | | |
| npm Downloads | | | | |
| GitHub Views | | | | |
| CWS Clicks | | | | |
| Extension Installs | | | | |
EOF

# 2. Create competitive alerts
cat > "$BASE/analytics/intel/ALERTS.md" << 'EOF'
# Competitive Alerts

## Daily Checks (5 min)
- [ ] npm search: "chrome extension starter"
- [ ] GitHub trending: chrome-extension topic

## Weekly Analysis (30 min)
- [ ] Keyword rankings in Google
- [ ] Competitor updates
- [ ] Content performance

## Alert Thresholds
- New competitor starter: Investigate within 48h
- Keyword ranking drop >10 positions: Analyze cause
- Traffic spike >50%: Identify source
EOF

# 3. Create first metrics snapshot
cat > "$BASE/analytics/METRICS_START.md" << 'EOF'
# chrome-extension-starter-mv3 - Metrics Snapshot

## Launch Date: [DATE]

### Baseline Metrics

| Metric | Value | Date |
|--------|-------|------|
| GitHub Stars | 0 | |
| npm Downloads (week 0) | 0 | |
| GitHub Forks | 0 | |
| CWS Views | 0 | |
| Extension Installs | 0 | |

### Traffic Sources (Week 0)

| Source | Visits | % |
|--------|--------|---|
| Direct | 0 | 0% |
| npm | 0 | 0% |
| Dev.to | 0 | 0% |
| Twitter | 0 | 0% |
| Reddit | 0 | 0% |
| HN | 0 | 0% |

### Goals (Month 1)

| Metric | Goal |
|--------|------|
| GitHub Stars | 50 |
| npm Downloads | 500 |
| CWS Extension Views | 100 |
EOF

# 4. Create issue response template
cat > "$BASE/analytics/ISSUE_RESPONSE.md" << 'EOF'
# Issue Response Templates

## Bug Report
```
Thanks for reporting! Can you provide:
1. Chrome version
2. Extension version 
3. Steps to reproduce

We'll investigate and get back to you within 24 hours.
```

## Feature Request
```
Great suggestion! We've added it to our roadmap.

[Link to issue if created]

Would you be interested in contributing this feature?
```

## Question
```
Happy to help!

[Answer here]

Let us know if you need more clarification!
```
EOF

echo "✅ HARVESTER: Analytics set up"

echo "[HARVESTER] $(date): Analytics configured" >> /Users/mike/minimax/agents/harvester/work/harvester.log
