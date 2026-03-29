# Claude And Codex Skills

A categorized repository of reusable skills for Claude and Codex, covering architecture, engineering, operations, design, testing, security, automation, and AI agent work.

The repository uses two layers on purpose:

- grouped source folders for clean GitHub browsing
- flat top-level skill entry points for runtime discovery inside `~/.claude/skills`

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

## Repository Layout

The canonical source lives under categories:

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
├── orchestrator -> architecture/orchestrator
├── api-tester -> testing/api-tester
├── ai-agent-engineer -> ai/ai-agent-engineer
├── skills.json
└── scripts/
    └── install.sh
```

The top-level symlinks keep local runtime usage simple inside Claude and Codex.

## Install

For Claude:

```bash
./scripts/install.sh ~/.claude/skills
```

For Codex:

```bash
./scripts/install.sh ~/.codex/skills
```

If this repository itself already lives at `~/.claude/skills`, the flat entry points are already present and no additional Claude install step is needed.

After installing into a new target, restart the client so it picks up the new skills.

## Usage

Use skills by their leaf name, not by category path:

- `/orchestrator`
- `/backend-architect`
- `/api-tester`
- `/security-tester`
- `/ai-agent-engineer`

You can also reference them in plain language:

- "Use `orchestrator` first, then `backend-architect` and `api-tester`."
- "Use `ui-tester` to review the checkout flow."
- "Use `ai-agent-engineer` to design the tool-calling workflow."

## Adding A Skill

1. Create the real skill directory under the appropriate category.
2. Add a `SKILL.md` file inside it.
3. Add a flat top-level symlink using the skill name.
4. Update `skills.json`.
5. Update this `README.md`.

## Publishing

This directory is ready to publish as a Git repository:

```bash
git init
git add .
git commit -m "Initial skills repository"
git branch -M main
git remote add origin <your-repo-url>
git push -u origin main
```
