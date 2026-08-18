# Style rules

Condensed from the [Google developer documentation style guide](https://developers.google.com/style).
Each section states the rule, then shows a recommended and a not-recommended form.

## Voice and tone

Write as a knowledgeable colleague: conversational, friendly, and direct. Clear information matters
more than personality.

Avoid slang, clichés, buzzwords, figurative language, metaphors, exclamation marks, internet
shorthand (*tl;dr*, *ymmv*), and filler openers such as *Please note that*.

| Too informal | Recommended | Too formal |
| --- | --- | --- |
| This API is totally awesome! | This API lets you collect user preference data. | The API may enable the acquisition of user preference information. |

## Grammar and word choice

- **Second person.** "You can configure the retry limit." Not "We recommend that users configure…".
- **Active voice.** "TypeORM opens the connection." Not "The connection is opened."
- **Present tense.** "The endpoint returns 404." Not "The endpoint will return 404."
- **Simple words.** *use* over *utilize* or *leverage*; *start* over *commence*; *lets you* over
  *allows you to*.
- **Phrasal verbs.** "This document uses the following terms." Not "makes use of".
- **Modifier placement.** "Request only one token." Not "Only request one token."
- **Helper words.** Keep *that*, *then*, and repeated conjunctions — they aid parsing and
  translation. "If the key is not found, then the default value is returned."
- **No ambiguous pronouns.** Repeat the noun when *it* or *this* could point at two things.
- **American spelling and punctuation.**
- **Serial comma.** "items, bundles, and memberships".

## Headings and titles

- One `h1` per document. Never skip a level.
- Sentence case: "Configure the N1 datasource".
- Task heading: bare infinitive — "Create an instance", not "Creating an instance".
- Concept heading: noun phrase — "Migration to Postgres 16", not "Migrating to Postgres 16".
- No gerund as the first word, no numbering, no code font, no links, no questions.
- Never place a heading directly before another heading; add introductory text.
- Do not refer to "this section". Write "The following sections describe…".

## Lists

- **Numbered** for ordered sequences, steps, or ranked items.
- **Bulleted** for unordered items.
- **Description lists** for term-and-definition pairs.
- Introduce a list with a complete sentence ending in a colon, not a fragment the items complete.
- Keep items parallel: all noun phrases, or all imperative clauses — never mixed.
- Capitalize the first word unless case carries meaning, as in a code term.
- Punctuate consistently: add a period to items that contain a verb or form a full thought; omit it
  for single words, fragments, bare code, or links. If items would be mixed, rewrite them or add
  periods throughout.

## Procedures

- Number every step. Use a bulleted list for a single-step procedure.
- Start each step with an imperative verb.
- Put the location or condition first: "In the Cloud console, click **Create**."
- Put the goal first when it clarifies: "To start a new document, click **File > New > Document**."
- Combine sequential menu selections with angle brackets: **File > New > Document**.
- Label optional steps: "Optional: Set `LOG_LEVEL` to `debug`."
- Sub-steps use lowercase letters; sub-sub-steps use roman numerals.
- State the result in the same step: "Click **Run**. The query results appear."
- Do not write "run the following command". Say what the command does, then show it.
- Do not repeat a procedure — link to it.
- Do not use *above* or *below* to point at content; use *preceding*, *following*, or a link.

## Code formatting

Use code font for text the reader types or the machine reads verbatim:

- Commands and utilities: `npm run dev`, `gcloud`
- Filenames, paths, extensions: `src/entities/index.ts`
- Flags, env vars, config keys: `--watch`, `DATABASE_URL`
- Class, method, field, type, and column names: `AppDataSource`, `STRUCT`
- HTTP verbs and status codes: a `POST` request, a `400 Bad Request` response
- Boolean literals when referenced directly: `true`, `false`
- Placeholders in uppercase: `PROJECT_ID`

Do not use code font for product names, organization names, browsable URLs, or contact email
addresses.

Other rules:

- Bold UI elements: click **Save**. If a UI element is also code, use both: select **`my-net-2`**.
- Never inflect a code term or use it as a verb. Write "send a `POST` request", not "`POST` the data".
- Every code block declares its language for syntax highlighting.
- Show the command and its real output separately. Do not include the shell prompt in copyable
  commands.
- Explain every placeholder immediately after the block, in a description list.

## Links

- Link text is the page title or a descriptive phrase, with the important words first.
- Never use *click here*, *this page*, *this document*, *here*, or a bare URL as link text.
- Do not use identical link text for two different destinations in one document.
- Include an abbreviation inside the link: [Google Kubernetes Engine (GKE)].
- Make it clear why you are linking, either in the surrounding sentence or in an "about" clause.

## Tables, notes, and images

- Give every table a header row; keep cell content parallel and short.
- Use notes sparingly and label them plainly: **Note:**, **Caution:**, **Warning:**. A warning means
  risk of data loss or damage.
- Give every image alt text that conveys its information, and prefer vector or high-resolution
  images. Do not put essential information only in an image.

## Punctuation and formatting

- One space after a period.
- Use an em dash without surrounding spaces, or restructure the sentence.
- Spell out an abbreviation on first use, then use the abbreviation: "point-in-time recovery (PITR)".
- Write dates unambiguously: `2026-08-18` or "August 18, 2026". Never `08/18/26`.
- Spell out numbers zero through nine in prose; use numerals for 10 and above, and always for
  measurements, versions, and percentages.
- Use *and* rather than an ampersand outside of code and UI labels.

## Accessibility and inclusion

- Do not rely on color, position, or shape alone to convey meaning.
- Do not use directional language such as "the button on the right"; name the element.
- Use they/them for a person of unspecified gender.
- Use diverse, neutral example names and avoid region-specific references such as seasons.
- Replace ableist and violent metaphors. See [WORD-LIST.md](WORD-LIST.md).

## Timeless documentation

Remove *currently*, *now*, *soon*, *eventually*, *in the future*, *as of this writing*, *new*,
*newer*, and *latest*. Name a version number or a date instead. Do not pre-announce unreleased
features.
