---
name: write-doc
description: Write and edit technical documentation for developers following the Google developer documentation style guide. Use when creating or revising a README, CONTRIBUTING file, changelog, runbook, migration guide, API reference, tutorial, how-to, ADR, docstring-level prose, or any written instructions meant for other developers or for your future self.
---

# Write documentation

Apply the [Google developer documentation style guide](https://developers.google.com/style) to every
document you write or edit. The rules in this skill are condensed from that guide.

## Quick start

1. Identify the document type: reference, how-to, tutorial, conceptual, or a hybrid such as a README.
   Pick the matching outline from [TEMPLATES.md](TEMPLATES.md).
2. Identify the reader and what they must accomplish. State that in the first paragraph.
3. Draft the document. Follow the core rules in this file; consult
   [STYLE-RULES.md](STYLE-RULES.md) for formatting details.
4. Check every word against [WORD-LIST.md](WORD-LIST.md).
5. Run the checklist at the end of this file before you hand the document over.

## Core rules

Ten rules cover most of what reviewers catch:

- **Second person.** Address the reader as *you*. Reserve *we* for the team that owns the product,
  and prefer to avoid it.
- **Active voice.** Name the actor. Write "The server rejects the request", not "The request is
  rejected".
- **Present tense.** Write "The command returns a token", not "will return".
- **Imperative steps.** Start each numbered step with a base-form verb: "Run", "Create", "Select".
- **Conditions first.** Write "If the build fails, check the logs", not "Check the logs if the build
  fails". Same for location: "In the console, click **Create**".
- **Sentence case headings.** Only the first word and proper nouns take a capital. Task headings use
  a bare infinitive ("Create an instance"), concept headings use a noun phrase ("Request
  authentication"). Never a gerund.
- **Sentence-case, descriptive links.** Link text names the destination: "see
  [Configure the datasource](...)". Never "click here", "this page", or a bare URL.
- **Code font for code.** Commands, filenames, paths, flags, env vars, types, field names, HTTP verbs
  and status codes. Bold for UI elements. Never inflect a code term or use it as a verb.
- **Timeless writing.** Drop *currently*, *now*, *soon*, *new*, *as of this writing*. Name a version
  or a date instead.
- **Global audience.** Short sentences, simple words, no idioms, no humor, no culture-specific
  references. Keep terminology identical throughout — do not vary a term for style.

## Workflow

When you are asked to write or update a document:

1. **Scope it.** Confirm the document type, the audience, and where the file belongs. Ask only if the
   answer would change the structure.
2. **Gather facts from the source.** Read the code, config, and commands you are documenting. Run
   commands where practical, and copy real output rather than inventing it. Never document behavior
   you have not verified.
3. **Outline the headings first.** Confirm the outline covers the reader's task before you write
   prose.
4. **Write.** One idea per paragraph. Put the most important information first, in the document, in
   each section, and in each sentence.
5. **Edit against the checklist.** Cut every sentence that does not help the reader act or decide.
6. **Report what you could not verify.** Flag any placeholder, assumption, or unverified claim
   explicitly instead of leaving it silently in the text.

## Reference files

- [STYLE-RULES.md](STYLE-RULES.md) — headings, lists, procedures, code formatting, tables, notes,
  punctuation, accessibility, and inclusive language.
- [WORD-LIST.md](WORD-LIST.md) — words to avoid and their replacements.
- [TEMPLATES.md](TEMPLATES.md) — outlines for README, how-to, tutorial, reference, runbook, ADR, and
  migration guide.

## Checklist

Verify before you finish:

- [ ] Every heading is sentence case, unique, and followed by text — never another heading.
- [ ] Every procedure step is a numbered, imperative sentence with its condition or location first.
- [ ] No banned word survives: *simply*, *easy*, *just*, *please*, *currently*, *should*, *via*,
      *leverage*, *e.g.*, *i.e.*, *whitelist*, *blacklist*, *master/slave*, *kill*, *execute*.
- [ ] Link text describes the destination; no "click here" and no bare URLs.
- [ ] Code, paths, and placeholders are in code font; `PLACEHOLDERS` are uppercase and explained.
- [ ] Lists are parallel in structure and punctuated consistently.
- [ ] Every command and code sample is copy-pasteable and was checked against the source.
- [ ] Nothing dates the document: no *currently*, *new*, *soon*, or unversioned "latest".
- [ ] Images have alt text; tables have header rows.
