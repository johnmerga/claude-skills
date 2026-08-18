# Document templates

Pick the outline that matches what the reader needs. Do not mix types in one document without
separating them into clearly labeled sections.

| Reader need | Type | Outline |
| --- | --- | --- |
| What is this and how do I start? | README | [README](#readme) |
| How do I accomplish one task? | How-to | [How-to guide](#how-to-guide) |
| Teach me by building something | Tutorial | [Tutorial](#tutorial) |
| What are the exact parameters? | Reference | [Reference](#reference) |
| Why does this work this way? | Concept | [Conceptual guide](#conceptual-guide) |
| Production is broken | Runbook | [Runbook](#runbook) |
| Why did we choose this? | ADR | [Architecture decision record](#architecture-decision-record) |
| How do I move to the new thing? | Migration guide | [Migration guide](#migration-guide) |

## README

```md
# Project name

One or two sentences: what this does and who it is for.

## Requirements

- Runtime and version
- Services the project needs locally

## Installation

Numbered steps, each a runnable command.

## Configuration

A table or description list of environment variables: name, whether it is required, and what it does.

## Usage

The shortest complete example that produces visible output.

## Development

Commands for running, testing, and linting.

## Project structure

Only the directories a newcomer must understand, one line each.

## Troubleshooting

Symptom, cause, and fix — for problems people actually hit.
```

## How-to guide

Answers one task for a reader who already knows the product.

```md
# Verb the object

One sentence naming the outcome and who needs it.

## Before you begin

Prerequisites as a checklist: access, installed tools, completed setup.

## Steps

Numbered imperative steps, condition or location first, with the result stated inline.

## Verify the result

The command or check that proves it worked, and the expected output.

## Troubleshooting

## What's next

Links to the two or three most likely follow-up tasks.
```

## Tutorial

Teaches through one end-to-end path. Everything works when followed in order.

```md
# Build a <thing>

## Objectives

A bulleted list of what the reader builds.

## Before you begin

## Set up the <first piece>

## <Each subsequent stage as its own task heading>

## Clean up

How to remove what the tutorial created, so nothing keeps costing money or holding ports.

## What's next
```

## Reference

Optimized for lookup, not reading. Keep entries in a predictable order and identical in shape.

```md
# <API, CLI, or config> reference

## Overview

## <Endpoint, command, or setting>

Description. Then, as description lists or tables:

- Parameters: name, type, required, default, description
- Returns
- Errors
- Example request and example response
```

## Conceptual guide

```md
# <Concept>

## Overview

What it is, in one paragraph, before any detail.

## How it works

A diagram or a numbered walk through the flow.

## Key terms

A description list. Define each term once and use it identically everywhere else.

## Design considerations

Trade-offs, limits, and when not to use it.

## What's next
```

## Runbook

Written for someone under pressure. Front-load the action.

```md
# <Alert or incident name>

## Severity and impact

## Detection

The alert, dashboard, or log query that surfaces this.

## Immediate mitigation

Numbered steps that stop the bleeding, before any explanation.

## Diagnosis

Commands and queries that identify the cause, with what each result means.

## Resolution

## Escalation

Who to contact and when.

## Related
```

## Architecture decision record

```md
# ADR NNNN: <decision in a noun phrase>

- Status: proposed | accepted | superseded by [ADR NNNN](...)
- Date: YYYY-MM-DD
- Deciders: names

## Context

The forces at play, stated as facts, not preferences.

## Decision

What was decided, in the active voice: "We store WAL segments in S3."

## Alternatives considered

Each option, and the specific reason it lost.

## Consequences

What becomes easier, what becomes harder, and what must be revisited later.
```

## Migration guide

```md
# Migrate from <old> to <new>

## What changed

## Before you begin

## Migration steps

Numbered steps. Mark any irreversible step with a **Caution:** note.

## Breaking changes

A table: old behavior, new behavior, required action.

## Roll back

The exact steps to return to the previous state.

## Verify the migration
```
