# write-doc

Writes and edits technical documentation for developers, following the
[Google developer documentation style guide](https://developers.google.com/style).

Use it for a README, CONTRIBUTING file, changelog, runbook, migration guide, API reference,
tutorial, how-to, architecture decision record, or any instructions written for other developers.

## Install

```
/plugin marketplace add OWNER/claude-skills
/plugin install write-doc@claude-skills
```

## What it contains

| File | Purpose |
| --- | --- |
| `skills/write-doc/SKILL.md` | Ten core rules, the drafting workflow, and a final checklist |
| `skills/write-doc/STYLE-RULES.md` | Headings, lists, procedures, code font, links, tables, punctuation, accessibility |
| `skills/write-doc/WORD-LIST.md` | Terms to avoid and their replacements |
| `skills/write-doc/TEMPLATES.md` | Outlines for eight document types |

Claude loads `SKILL.md` when a request matches the skill description, then reads the reference files
only when it needs them.

## What it enforces

- Second person, active voice, present tense, imperative steps
- Conditions and locations before instructions
- Sentence case headings, descriptive link text, code font for code
- Timeless writing: no *currently*, *new*, *soon*, or unversioned "latest"
- Inclusive language: no *blacklist*, *master/slave*, *sanity check*, or ableist metaphors
