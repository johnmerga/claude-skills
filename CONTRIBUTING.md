# Add a skill

## Before you begin

Install Claude Code and clone this repository.

## Steps

1. Scaffold the directories and manifests:

   ```bash
   ./scripts/new-skill.sh my-skill
   ```

   The script creates `plugins/my-skill/` and prints the marketplace entry to add.

2. Add the printed entry to the `plugins` array in `.claude-plugin/marketplace.json`. Keep the
   entries in alphabetical order.

3. Write `plugins/my-skill/skills/my-skill/SKILL.md`. The frontmatter needs two fields:

   ```md
   ---
   name: my-skill
   description: What the skill does. Use when <specific triggers>.
   ---
   ```

   The `description` is the only text Claude reads when deciding whether to load the skill, so name
   the concrete triggers: file types, keywords, and situations. Keep `SKILL.md` under 100 lines and
   move detail into sibling reference files that `SKILL.md` links to.

4. Copy the same description into `plugins/my-skill/.claude-plugin/plugin.json` and into the
   marketplace entry. All three must match.

5. Validate both manifests:

   ```bash
   claude plugin validate --strict .
   claude plugin validate --strict plugins/my-skill
   ```

6. Test the skill before you open a pull request:

   ```
   /plugin marketplace add /absolute/path/to/claude-skills
   /plugin install my-skill@claude-skills
   ```

   Restart Claude Code, then give it a request that should trigger the skill and confirm it loads.

## Conventions

- Use kebab-case for skill names.
- Bump `version` in `plugin.json` when you change a skill's behavior.
- Add executable helpers under `skills/<name>/scripts/` only when the operation is deterministic,
  such as validation or formatting. Prefer instructions otherwise.
- Document each skill in its own `plugins/<name>/README.md`, and add a row to the table in the root
  [README](README.md).
