#!/usr/bin/env sh
set -eu

TARGET_DIR="${1:-$HOME/.claude/skills}"

SCRIPT_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
REPO_ROOT="$(CDPATH= cd -- "$SCRIPT_DIR/.." && pwd)"

mkdir -p "$TARGET_DIR"
TARGET_DIR="$(CDPATH= cd -- "$TARGET_DIR" && pwd)"

if [ "$REPO_ROOT" = "$TARGET_DIR" ]; then
  printf 'Target directory matches repo root: %s\n' "$TARGET_DIR"
  printf 'No files copied. Clone elsewhere and install, or run ./scripts/link-local.sh for local aliases.\n'
  exit 0
fi

INSTALLED_COUNT=0

for SKILL_FILE in $(find "$REPO_ROOT" -type f -name SKILL.md | sort); do
  SKILL_DIR="$(dirname "$SKILL_FILE")"
  SKILL_NAME="$(basename "$SKILL_DIR")"
  DEST_DIR="$TARGET_DIR/$SKILL_NAME"

  mkdir -p "$DEST_DIR"
  cp -R "$SKILL_DIR/." "$DEST_DIR/"
  INSTALLED_COUNT=$((INSTALLED_COUNT + 1))

  printf 'Installed %s -> %s\n' "$SKILL_NAME" "$DEST_DIR"
done

printf 'Installed %s skills into %s\n' "$INSTALLED_COUNT" "$TARGET_DIR"
