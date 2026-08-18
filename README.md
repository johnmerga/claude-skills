# claude-skills

Reusable [Claude Code](https://claude.com/claude-code) skills, published as a plugin marketplace.
Each skill is its own plugin, so you install only the ones you want.

## Available skills

| Skill | What it does |
| --- | --- |
| [write-doc](plugins/write-doc) | Writes and edits technical documentation following the Google developer documentation style guide. |

## Installation

Run both commands inside Claude Code.

```
/plugin marketplace add johnmerga/claude-skills
/plugin install write-doc@claude-skills
```

Restart Claude Code. The skill loads automatically whenever a request matches its description; you
can also invoke it directly with `/write-doc`.

To install from a local clone instead of GitHub:

```
/plugin marketplace add /path/to/claude-skills
/plugin install write-doc@claude-skills
```

## Updating

```
/plugin marketplace update claude-skills
/plugin update write-doc
```

## Repository layout

```
claude-skills/
├── .claude-plugin/
│   └── marketplace.json      # The plugin catalog. Every skill needs an entry here.
├── plugins/
│   └── <skill-name>/
│       ├── .claude-plugin/
│       │   └── plugin.json   # Plugin manifest: name, version, description
│       ├── README.md
│       └── skills/
│           └── <skill-name>/
│               ├── SKILL.md  # Instructions Claude loads
│               └── *.md      # Reference files loaded on demand
└── scripts/
    └── new-skill.sh          # Scaffolds a new skill
```

Two rules keep the repository modular:

- One plugin per skill. A developer who wants `write-doc` must not have to take anything else.
- The plugin name, the directory under `plugins/`, and the directory under `skills/` all use the
  same name.

## Add a skill

See [CONTRIBUTING.md](CONTRIBUTING.md).
