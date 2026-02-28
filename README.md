# MINIMAX - 5-Agent Distribution Engine

## Overview
Autonomous system for distributing and amplifying Chrome extension open-source projects.

## Structure

```
MINIMAX/
├── 01-Agents/         # 5 agent prompt files + scripts
├── 02-Infrastructure/ # GitHub repos (chrome-extension-starter-mv3, etc.)
├── 03-Content/        # Published articles (Dev.to, Hashnode, Medium)
├── 04-SEO/            # Keywords, UTM, conversion, launch checklist
├── 05-Analytics/      # Dashboard, metrics, competitive intel
├── 06-GitHub-Repos/   # All repo URLs
├── 07-Tracking/       # Repo, content, UTM tracking
├── state/             # Current priorities
└── README.md
```

## 5 Agents

| Agent | Role |
|-------|------|
| SEEDER | Package publishing, GitHub releases |
| WRITER | Content creation, blog distribution |
| NETWORKER | Community outreach, awesome lists |
| OPTIMIZER | SEO, conversion, UTM tracking |
| HARVESTER | Analytics, feedback, intelligence |

## GitHub Repos
- https://github.com/theluckystrike/chrome-extension-starter-mv3
- https://github.com/theluckystrike/chrome-storage-plus
- https://github.com/theluckystrike/json-toolkit-cli
- https://github.com/theluckystrike/mv3-migrate
- https://github.com/theluckystrike/tab-manager-api

## Quick Start
```bash
# Run all agents
cd 01-Agents
bash run.sh
```

---
Built by MINIMAX - Autonomous distribution engine
