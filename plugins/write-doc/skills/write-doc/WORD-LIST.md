# Word list

Condensed from the [Google style guide word list](https://developers.google.com/style/word-list).
Check drafts against both tables.

## Never use

These terms are ableist, violent, or exclusionary. Replace them even in code comments and variable
names where you control the code.

| Avoid | Use instead |
| --- | --- |
| abnormal, deficient, deformed (of people) | Describe the specific condition |
| blind to, turn a blind eye | ignore, unaware, disregard |
| crazy, insane, mad, bonkers, lunatic | complicated, complex, baffling, unexpected |
| cripple, crippled | slow down, degrade, limit |
| dumb down | simplify, remove jargon |
| lame | Precise, non-figurative wording |
| blacklist / whitelist / graylist | denylist / allowlist / provisional list |
| master / slave | primary / replica, controller / worker, manager / node |
| man hours, manpower | person hours, staffing, effort |
| man-in-the-middle | on-path attacker |
| female / male connector | socket / plug |
| guys | everyone, folks, all |
| gypsy | Romani, Roma, Traveller |
| kill, kill off | stop, exit, cancel, end, force quit |
| nuke, blow away | remove, delete |
| blast radius | affected area, scope of impact |
| break-glass | emergency access, manual fallback |
| sanity check | quick check, confidence check, validation |
| grandfathered | legacy, exempt, preexisting |
| native (of people or speakers) | Specific term: built-in, fluent, first language |

## Prefer

| Avoid | Use instead |
| --- | --- |
| above, below (as pointers) | preceding, following, or a link |
| access (verb) | see, edit, find, use, view |
| actionable | Omit, or "that you can act on" |
| aka | also known as |
| allows you to | lets you |
| and/or | Pick one, or spell out both cases |
| as (meaning because) | because |
| as of this writing | Omit |
| could | can |
| currently, now, at this time | Omit |
| desire, wish | want, need |
| does not yet | State the current behavior directly |
| e.g. | for example, such as |
| easy, easily, simple, simply | Omit, or state the concrete benefit |
| eventually, soon, in the future | Omit |
| execute (a command) | run |
| hit, press (a UI control) | click, tap, select |
| i.e. | that is |
| in order to | to |
| just | Omit |
| latest, new, newer | Name the version or date |
| learnings | knowledge, lessons, findings |
| legacy | A precise term, defined on first use |
| leverage, utilize | use, build on |
| may (permission vs. possibility) | can (ability), might (possibility), must (requirement) |
| note that, please note | Omit, or use a **Note:** callout |
| once (meaning after) | after |
| per (outside rate units) | for each, according to, or rephrase |
| performant | fast, accurate, efficient — name the property |
| please | Omit in instructions |
| should | must (required) or can (optional) |
| since (meaning because) | because |
| terminate | stop, end, exit |
| via | by, through, using |
| we (as the reader) | you |
| would | Use the direct mood: "the command returns" |

## Terms that need care

- **can vs. may vs. might vs. must** — ability, permission, possibility, requirement. Do not blur them.
- **that vs. which** — *that* introduces a restrictive clause with no comma; *which* introduces a
  non-restrictive clause after a comma.
- **ensure vs. insure vs. assure** — *ensure* means make certain; the others concern insurance and
  reassurance.
- **setup vs. set up** — *setup* is the noun; *set up* is the verb.
- **login vs. log in** — *login* is the noun or adjective; *log in* is the verb.
