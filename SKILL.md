---
name: aemo-brand-skill
description: 'Design new interfaces, components, or documents that follow AEMO (Australian Energy Market Operator) brand guidelines, or review existing websites, UI, mockups, or generated designs for AEMO brand compliance, using AEMO Global Experience Language (GEL). Use when building or styling AEMO-branded UI, selecting AEMO logos, colours, typography, or pictographs, or auditing a design for AEMO brand/visual compliance.'
argument-hint: '[design|review] <what to build, or file/URL/description to audit>'
user-invocable: true
disable-model-invocation: false
---

# AEMO Brand & Visual System Skill

## Purpose

This skill equips an AI coding agent to work with the **Australian Energy Market Operator (AEMO)**
brand and visual system (AEMO's "Global Experience Language," or **GEL**) in two directions:

1. **Design/implement** new interfaces, components, or documents that align with AEMO's brand.
2. **Review** existing interfaces, mock-ups, or generated designs for compliance with that brand.

Use it whenever a task involves AEMO-branded UI, marketing collateral, documents, or presentations
— e.g. "build a dashboard for AEMO," "style this component to match AEMO's brand," "does this
mock-up follow AEMO's guidelines?", or "audit this website for brand compliance."

Do **not** use this skill for AEMO's functional/technical domain content (energy market rules,
data formats, etc.) — it covers **brand, visual identity, and design system** matters only.

## Before you start: load the reference material

For every task, read:
- **[design.md](./design.md)** — the detailed rules (logo, typography, colour, tokens, pictographs,
  compliance checklist), each one cited to its source URL.
- **[tokens/colors.json](./tokens/colors.json)** and **[tokens/colors.css](./tokens/colors.css)** —
  machine-readable colour values for implementation.
- **[references/sources.md](./references/sources.md)** — what was and wasn't verified, and known
  gaps/conflicts.
- **[references/asset-manifest.md](./references/asset-manifest.md)** — what assets are bundled and
  their licensing restrictions (read this before reusing any logo or pictograph file).

**The original GEL pages remain authoritative at all times.** This skill package is a snapshot
taken on a specific access date (recorded in `references/sources.md`). If a rule here ever appears
to conflict with the live site, or if the task requires a guarantee of currency, re-check the live
pages before relying on this package:

1. https://gel.aemo.com.au/docs/branding/logo
2. https://gel.aemo.com.au/docs/branding/visual
3. https://gel.aemo.com.au/docs/branding/typeface
4. https://gel.aemo.com.au/docs/branding/colours/colour-palette
5. https://gel.aemo.com.au/docs/guides/design-tokens/color
6. https://gel.aemo.com.au/docs/branding/pictographs

## Hard rule: never invent brand guidance

**Do not invent or infer brand rules, token values, asset names, font weights, spacing
requirements, or usage restrictions that are not supported by `design.md` / the sources.** Several
things are explicitly **not specified** by AEMO (e.g. logo clear-space/minimum-size, a numeric
type scale, pictograph sizing rules, dark-mode colours) — `design.md` lists these under "Summary of
explicitly flagged gaps and conflicts." When you hit one of these gaps:
- For **design/implementation** tasks: state that no official rule exists, apply ordinary design
  judgement, and don't present your choice as an AEMO requirement.
- For **review** tasks: do not fail an interface against a rule that doesn't exist. Place the
  observation under "Risks and uncertainties" (see output format below), not "Violations."
- When two sources conflict (see `design.md` "Known conflicts," e.g. Purple Primary `#6B3077` vs.
  the `Purple 500` token `#6c3078`), prefer the **design-token value** for new implementation, but
  say so explicitly — don't silently pick one and discard the other.

## Workflow A — Designing or implementing a new AEMO-aligned interface

1. **Clarify scope.** Confirm what's being built (web UI, document, presentation, marketing
   asset) and its background context (white, solid colour, photo/pattern) — this determines which
   logo variant is legal to use.
2. **Logo.** Pick a variant from `assets/logos/` using `design.md` → Logo → "File-selection
   guidance." Use the file as-is; never edit/recolour/distort/reconfigure it.
3. **Typography.** Load Figtree per `design.md` → Typography → "Web-loading guidance" (Google
   Fonts), with Arial Nova as the documented fallback. Use only the four documented weights (Light
   300 / Regular 400 / Heavy 650 / Extra Bold 800); Extra Bold for headings, Regular for body,
   Light/Heavy for captions/tables/diagram emphasis. Prefer title/sentence case; reserve ALL CAPS
   for charts, labels, and UI navigation. No text outlines/shadows/effects.
4. **Colour.** Use `tokens/colors.css` custom properties (or `tokens/colors.json` values) rather
   than retyping hex codes. Lead with Purple (Hero/Purple 500 family) as the dominant brand
   colour; use "Pop"/accent colours sparingly for highlights, not large fills; reserve Fuel-family
   tokens for genuine fuel/technology-type data encoding. Verify text/background contrast meets
   WCAG 2.1 AA.
5. **Visual language.** Favour white space, text, and iconography as the primary content carriers
   (per `design.md` → "Brand principles"); use colour blocks/shadows selectively for emphasis, not
   as default styling; keep the interface fast and to-the-point (the "Utility" value).
6. **Pictographs.** If an illustrative icon is needed, select one from
   `assets/pictographs/` / `references/pictograph-inventory.csv` matching the concept; keep it
   unmodified; remember the restricted licence (AEMO-internal use only — see
   `references/asset-manifest.md`) before this output leaves an AEMO context. If nothing in the
   library fits, say so and recommend requesting a custom pictograph from AEMO's Communications
   and Corporate Affairs team — don't draw a new "brand-style" icon yourself.
7. **Sanity-check against the compliance checklist** in `design.md` /
   `examples/brand-review-checklist.md` before finishing.

## Workflow B — Reviewing an existing interface for compliance

1. **Gather evidence.** Inspect the interface's logo usage, colour values (actual hex/rgb used,
   not assumed), typeface/weights, casing, iconography, and overall layout approach.
2. **Check against `design.md`,** section by section (Logo → Typography → Colour → Design tokens
   → Pictographs → Visual language), using the Compliance checklist there as your working list.
3. **Classify every finding** into exactly one of the four buckets in the required output format
   below — don't blend them.
4. **For colour**, compare observed hex values against `tokens/colors.json`/`colors.css` for exact
   matches; note near-misses (e.g. off-brand purple shades) precisely, including the delta if
   relevant (see the Purple Primary/Purple 500 conflict as a model for how to phrase this kind of
   near-match).
5. **For logos**, check background/contrast rules and confirm no distortion/recolouring, not just
   "a logo is present somewhere."
6. **For gaps** (rules AEMO hasn't published), explicitly say the rule doesn't exist rather than
   failing or passing the interface against it.
7. **Produce the structured output** below.

## Required review-output format

Structure every compliance review response with exactly these four headed sections, in this
order. Every individual finding must cite the relevant `design.md` section (and, where useful, the
original GEL URL).

```markdown
### Violations
(Clear breaches of an explicit, sourced brand rule. Cite the rule and its source.)

### Risks and uncertainties
(Things that might be wrong but rely on an unspecified rule, a known source conflict,
or ambiguous evidence — e.g. "no clear-space rule exists to check against," or
"colour is close to but not exactly Purple 500.")

### Recommended corrections
(Concrete, actionable fixes for each violation and, where sensible, each risk.)

### Confirmed compliant elements
(What's already correct — cite the rule it satisfies. Don't skip this section; it is
as important as the violations for giving a complete picture.)
```

## Accessibility and brand-compliance checks (always run these)

- Logo background/contrast rule respected (white bg for colour/black logo; solid brand colour for
  white/reverse logo; never on patterns/photos).
- Logo not edited/distorted/recoloured/reconfigured.
- Primary typeface is Figtree (or documented Arial Nova fallback); only the four documented
  weights are present; heading/body/emphasis roles match the source mapping; casing rule followed.
- Colour values match an official token or documented brand colour, or any mismatch is called out
  explicitly (not silently accepted as "close enough").
- Text/background contrast meets WCAG 2.1 AA (this is general accessibility best practice,
  surfaced because AEMO's own Visual Identity page names "accessibility and readability" as key —
  present it as such, not as a numbered AEMO rule).
- Pictographs (if used) come from the official library, are unmodified, and are not being
  redistributed outside AEMO's own projects/services.
- No invented brand rule (clear-space figure, type scale, dark-mode colour, etc.) is being used as
  a pass/fail criterion.

## Handling missing or conflicting guidance

- If a rule is simply **absent** from the sources (see `design.md`'s gap list), say so plainly,
  apply ordinary design judgement if asked to implement something, and never present your
  judgement call as an official AEMO requirement during a review.
- If two sources **conflict** (see `design.md`'s "Known conflicts"), state both values, say which
  one you are using and why (prefer the design-token value for new implementation, per the task's
  own resolution rule), and do not silently discard either value.
- If you are asked a brand question this package cannot answer confidently, say so and point to
  the live GEL pages (and, where relevant, AEMO's Communications and Corporate Affairs team, per
  the Pictographs page's own escalation path) rather than guessing.

## Final reminder

The six GEL pages listed above are the single source of truth. This package — `design.md`, the
token files, and the bundled assets — is a convenience layer over that truth, current as of its
recorded access date. Prefer the live pages whenever currency matters, and never fabricate a brand
rule to fill a gap in either direction (design or review).
