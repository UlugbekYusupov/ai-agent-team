# Claude And Codex Skills

A categorized repository of reusable skills for Claude and Codex, covering architecture, engineering, operations, design, testing, security, automation, and AI agent work.

The repository tracks only grouped source folders so GitHub stays clean. Runtime skill names are created during installation, or by a local helper script if you keep the repo directly inside `~/.claude/skills`.

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

The tracked source lives under categories:

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
    ├── install.sh
    └── link-local.sh
```

Install output is intentionally flat, for example:

```text
~/.claude/skills/
  orchestrator/
  backend-architect/
  api-tester/
  ui-tester/
```

## Install

Clone the repo anywhere outside your runtime skills directory, then install into Claude or Codex.

For Claude:

```bash
./scripts/install.sh ~/.claude/skills
```

For Codex:

```bash
./scripts/install.sh ~/.codex/skills
```

After installing into a new target, restart the client so it picks up the new skills.

## Local Dev Mode

If this repository itself lives inside `~/.claude/skills`, you can create local-only flat aliases without tracking them in git:

```bash
./scripts/link-local.sh
```

Those aliases are ignored by git, so GitHub will not show duplicate-looking top-level entries.

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
3. Update `skills.json`.
4. Update this `README.md`.
5. If you use the repo locally inside `~/.claude/skills`, rerun `./scripts/link-local.sh`.

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
