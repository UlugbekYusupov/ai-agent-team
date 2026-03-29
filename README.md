# AI Agent Team Skills

A categorized skill repository for Claude and Codex.

It includes reusable skills for:

- architecture
- engineering
- operations
- design
- testing
- security
- automation
- AI agent systems

## Quick Start

### Install For Claude

```bash
git clone <your-repo-url>
cd <repo-folder>
./scripts/install.sh ~/.claude/skills
```

Restart Claude after installation.

### Install For Codex

```bash
git clone <your-repo-url>
cd <repo-folder>
./scripts/install.sh ~/.codex/skills
```

Restart Codex after installation.

## How To Use

Use skills by their name:

- `/orchestrator`
- `/backend-architect`
- `/frontend-developer`
- `/api-tester`
- `/ui-tester`
- `/performance-tester`
- `/security-tester`
- `/ai-agent-engineer`

You can also call them in plain language:

- `Use orchestrator first, then backend-architect and api-tester.`
- `Use ui-tester to review this flow.`
- `Use ai-agent-engineer to design the agent workflow.`

Important:

- use the skill name only
- do not use category paths like `/testing/api-tester`

## Skill Catalog

### Architecture

- `orchestrator`
- `software-architect`

### Engineering

- `backend-architect`
- `frontend-developer`
- `database-optimizer`

### Operations

- `devops-automator`

### Design

- `ui-ux-designer`

### Testing

- `test-orchestrator`
- `api-tester`
- `ui-tester`
- `performance-tester`
- `security-tester`

### Security

- `security-engineer`

### Automation

- `n8n-automation-engineer`

### AI

- `ai-agent-engineer`

## How Installation Works

The repository is grouped by category for GitHub readability, but the installer copies each skill into a flat runtime layout that Claude and Codex can discover.

Example installed layout:

```text
~/.claude/skills/
  orchestrator/
  backend-architect/
  api-tester/
  ui-tester/
```

## Repository Structure

```text
.
├── architecture/
│   ├── orchestrator/
│   └── software-architect/
├── engineering/
│   ├── backend-architect/
│   ├── frontend-developer/
│   └── database-optimizer/
├── operations/
│   └── devops-automator/
├── design/
│   └── ui-ux-designer/
├── testing/
│   ├── test-orchestrator/
│   ├── api-tester/
│   ├── ui-tester/
│   ├── performance-tester/
│   └── security-tester/
├── security/
│   └── security-engineer/
├── automation/
│   └── n8n-automation-engineer/
├── ai/
│   └── ai-agent-engineer/
├── skills.json
└── scripts/
    └── install.sh
```

## Updating

To get the latest version later:

```bash
git pull
./scripts/install.sh ~/.claude/skills
```

For Codex:

```bash
git pull
./scripts/install.sh ~/.codex/skills
```
