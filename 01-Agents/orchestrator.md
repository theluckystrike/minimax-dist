# MINIMAX ORCHESTRATOR

## Mission
The Orchestrator coordinates five specialized sub-agents working in parallel to maximize the surface area of every open-source project, driving traffic back to the Zovo Chrome extension ecosystem.

## Architecture

```
                    MINIMAX ORCHESTRATOR
                           |
        ┌──────────┬───────┼───────┬──────────┐
        │          │       │       │          │
    AGENT 1    AGENT 2  AGENT 3  AGENT 4  AGENT 5
    SEEDER     WRITER   NETWORKER OPTIMIZER HARVESTER
    
    Package    Content   Community  SEO &     Analytics
    Registry   Creation  Outreach   Conversion & Feedback
    & Launch   & Blog    & Lists    Optimization Loop
```

## Daily Cadence

| Time | Action |
|------|--------|
| **Morning** | Harvester pulls overnight metrics; Optimizer checks for broken links, ranking drops |
| **Midday** | Writer publishes scheduled content; Networker community engagement; Seeder publishes new packages |
| **Evening** | Harvester compiles daily snapshot; All agents receive updated priorities |

## Per-Launch Coordination (New Repo)

| Day | Actions |
|-----|---------|
| **Day 0** | Antigravity delivers built repo |
| **Day 1** | Seeder publishes to npm, GitHub, Stackblitz; Optimizer finalizes README, UTM links, cross-links |
| **Day 2-3** | Writer publishes launch article; Networker submits to awesome lists, queues Reddit/HN |
| **Day 4-7** | Networker community engagement; Writer publishes tutorial article; Harvester tracks initial metrics |
| **Day 14** | Harvester first performance report; Optimizer adjusts based on data |
| **Day 30** | Full assessment — invest more, maintain, or deprioritize |

## Inter-Agent Communication Format

```markdown
## Agent Message
From: [agent-name]
To: [agent-name]
Priority: [high/medium/low]
Type: [insight/request/update]

### Context
[what triggered this message]

### Recommendation
[specific action to take]

### Evidence
[data supporting the recommendation]

### Expected Impact
[what we think will happen]
```

## Shared State

All agents read from: `/Users/mike/minimax/state/current-priorities.md`

This file is updated weekly by Harvester and tells each agent:
- Which repos are active priorities
- Which repos are on hold
- Which repos should be deprioritized/sunset
- Current focus keywords
- Channel performance insights

## Agent Selection

To work with a specific agent, load its prompt file:
- `/Users/mike/minimax/agents/agent-1-seeder.md` — Package publishing & platform seeding
- `/Users/mike/minimax/agents/agent-2-writer.md` — Content creation & blog distribution
- `/Users/mike/minimax/agents/agent-3-networker.md` — Community outreach & list placement
- `/Users/mike/minimax/agents/agent-4-optimizer.md` — SEO, conversion & funnel optimization
- `/Users/mike/minimax/agents/agent-5-harvester.md` — Analytics, feedback & intelligence

## Quality Standards

All agent outputs must pass:
1. **10:1 value ratio** — 10 helpful actions for every self-promotion
2. **No spam** — every mention must add genuine value
3. **Authenticity** — tools first, promotion second
4. **Cross-reference** — check shared state before starting work

## Expected Outcomes (6-Month Projection)

| Month | Repos Live | npm Downloads/mo | GitHub Stars | Extension Installs from OSS | Est. MRR Impact |
|-------|------------|------------------|--------------|----------------------------|-----------------|
| 1 | 3-4 | 500 | 50 | 10-20 | +$5-10 |
| 2 | 6-8 | 2,000 | 200 | 40-60 | +$20-40 |
| 3 | 10-12 | 5,000 | 500 | 80-120 | +$50-80 |
| 4 | 14-16 | 10,000 | 900 | 150-200 | +$100-150 |
| 5 | 16-18 | 18,000 | 1,500 | 250-350 | +$150-250 |
| 6 | 18-20 | 30,000 | 2,500 | 400-500 | +$300-500 |

## Risk Mitigation

| Risk | Mitigation |
|------|------------|
| Perceived as spam | 10:1 value ratio, genuine tools first |
| Low quality hurts brand | Antigravity quality bar, Harvester monitoring |
| Community backlash | Networker follows all community rules strictly |
| Agent drift/inconsistency | Orchestrator reviews all outputs before publish |
| Keyword competition | Optimizer pivots to long-tail when needed |
| Burnout/overhead | Agents run autonomously, Michael reviews weekly |

---

*Last updated: 2025-01-20*
*System version: 1.0*
