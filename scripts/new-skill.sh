#!/usr/bin/env bash
# Scaffolds a new skill plugin. Usage: ./scripts/new-skill.sh <skill-name>
set -euo pipefail

NAME="${1:-}"
if [[ -z "$NAME" ]]; then
  echo "Usage: $0 <skill-name>" >&2
  exit 1
fi
if [[ ! "$NAME" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
  echo "Error: skill name must be kebab-case, for example 'write-doc'." >&2
  exit 1
fi

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIR="$ROOT/plugins/$NAME"

if [[ -e "$DIR" ]]; then
  echo "Error: $DIR already exists." >&2
  exit 1
fi

mkdir -p "$DIR/.claude-plugin" "$DIR/skills/$NAME"

DESC="TODO: what the skill does. Use when TODO: specific triggers."

cat > "$DIR/.claude-plugin/plugin.json" <<JSON
{
  "\$schema": "https://anthropic.com/claude-code/plugin.schema.json",
  "name": "$NAME",
  "version": "0.1.0",
  "description": "$DESC",
  "author": {
    "name": "TODO"
  },
  "keywords": []
}
JSON

cat > "$DIR/skills/$NAME/SKILL.md" <<MD
---
name: $NAME
description: $DESC
---

# ${NAME//-/ }

## Quick start

TODO: the shortest useful example.

## Workflows

TODO: numbered, imperative steps.

## Checklist

- [ ] TODO
MD

cat > "$DIR/README.md" <<MD
# $NAME

$DESC

## Install

\`\`\`
/plugin marketplace add OWNER/claude-skills
/plugin install $NAME@claude-skills
\`\`\`

## What it contains

| File | Purpose |
| --- | --- |
| \`skills/$NAME/SKILL.md\` | Instructions Claude loads |
MD

echo "Created $DIR"
echo
echo "Next steps:"
echo "  1. Write the description and instructions in plugins/$NAME/skills/$NAME/SKILL.md"
echo "  2. Add this entry to the 'plugins' array in .claude-plugin/marketplace.json:"
echo
cat <<JSON
    {
      "name": "$NAME",
      "description": "<same description as plugin.json>",
      "category": "TODO",
      "keywords": [],
      "source": "./plugins/$NAME"
    }
JSON
echo
echo "  3. Validate: claude plugin validate --strict . && claude plugin validate --strict plugins/$NAME"
