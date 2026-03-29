#!/usr/bin/env sh
set -eu

SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
REPO_ROOT="$(CDPATH= cd -- "$SCRIPT_DIR/.." && pwd)"

link_skill() {
  SKILL_NAME="$1"
  TARGET_PATH="$2"
  LINK_PATH="$REPO_ROOT/$SKILL_NAME"

  if [ -L "$LINK_PATH" ]; then
    CURRENT_TARGET="$(readlink "$LINK_PATH")"
    if [ "$CURRENT_TARGET" = "$TARGET_PATH" ]; then
      printf 'Exists %s -> %s\n' "$SKILL_NAME" "$TARGET_PATH"
      return
    fi
    rm "$LINK_PATH"
  elif [ -e "$LINK_PATH" ]; then
    printf 'Refusing to overwrite existing path: %s\n' "$LINK_PATH" >&2
    exit 1
  fi

  ln -s "$TARGET_PATH" "$LINK_PATH"
  printf 'Linked %s -> %s\n' "$SKILL_NAME" "$TARGET_PATH"
}

link_skill orchestrator architecture/orchestrator
link_skill software-architect architecture/software-architect
link_skill ai-agent-engineer ai/ai-agent-engineer
link_skill n8n-automation-engineer automation/n8n-automation-engineer
link_skill ui-ux-designer design/ui-ux-designer
link_skill backend-architect engineering/backend-architect
link_skill database-optimizer engineering/database-optimizer
link_skill frontend-developer engineering/frontend-developer
link_skill devops-automator operations/devops-automator
link_skill security-engineer security/security-engineer
link_skill api-tester testing/api-tester
link_skill performance-tester testing/performance-tester
link_skill security-tester testing/security-tester
link_skill test-orchestrator testing/test-orchestrator
link_skill ui-tester testing/ui-tester
