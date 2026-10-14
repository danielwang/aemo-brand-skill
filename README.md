# AEMO Brand Skill

A platform-neutral reference package that lets an AI coding agent (or a human designer/developer)
**design new AEMO-branded interfaces** and **review existing interfaces for brand compliance**,
based solely on AEMO's published Global Experience Language (GEL) documentation.

This package uses only ordinary Markdown, JSON, CSS, PNG, SVG, and shell-script files. The
`SKILL.md` frontmatter follows the open, multi-vendor "Agent Skill" convention shared by several
AI coding tools (it is not proprietary to any one of them — see **Installation** below) so the
skill can be auto-discovered; nothing else in the package depends on a specific AI platform.

## What's in this package

```
aemo-brand-skill/
├── SKILL.md                          Operational instructions for an AI agent (read first)
├── design.md                         Full design-system reference, cited to source
├── README.md                         This file
├── scripts/
│   └── install.sh                    Installs/uninstalls this folder into recognized skill locations
├── references/
│   ├── sources.md                    Every source page: URL, title, access date, assets, gaps
│   ├── asset-manifest.md             Provenance/licensing for every bundled binary asset
│   └── pictograph-inventory.csv      Full per-file listing of the 383 bundled pictographs
├── tokens/
│   ├── colors.json                   Machine-readable colour tokens + brand palette
│   └── colors.css                    Same values as CSS custom properties
├── assets/
│   ├── logos/                        8 official AEMO logo PNGs (public use)
│   └── pictographs/                  383 official AEMO pictograph SVGs (restricted use — see below)
└── examples/
    └── brand-review-checklist.md     A working checklist for compliance reviews
```

## Installation

`SKILL.md` carries standard Agent Skill frontmatter (`name`, `description`, `argument-hint`,
`user-invocable`, `disable-model-invocation`). Several AI coding tools (including VS Code Copilot
and Claude Code) auto-discover skills with this exact format when the folder is placed in one of
their recognized locations — so "installing" this package just means copying (or symlinking) it
into one of those folders:

| Scope | Location | Who sees it |
|---|---|---|
| Personal | `~/.copilot/skills/aemo-brand-skill/` | You, in every workspace |
| Personal | `~/.claude/skills/aemo-brand-skill/` | You, in every workspace |
| Personal | `~/.agents/skills/aemo-brand-skill/` | You, in every workspace |
| Project | `<repo>/.github/skills/aemo-brand-skill/` | Anyone working in that repo |
| Project | `<repo>/.agents/skills/aemo-brand-skill/` | Anyone working in that repo |
| Project | `<repo>/.claude/skills/aemo-brand-skill/` | Anyone working in that repo |

### Using the install script

```bash
# Install to all three personal locations (default)
./scripts/install.sh

# Install into a specific project's .github/skills, .agents/skills, and .claude/skills
./scripts/install.sh --project /path/to/my-repo

# Preview without changing anything
./scripts/install.sh --dry-run

# Symlink instead of copy (stays in sync with this source folder; breaks if it moves)
./scripts/install.sh --symlink

# Remove it again
./scripts/install.sh --uninstall --personal
```

### Installing manually

Copy (or symlink) this entire folder, keeping its name as `aemo-brand-skill`, into any one of the
locations in the table above. No build step is required — every file is used as-is.

### Verifying

After installing, confirm the files landed intact, e.g.:

```bash
ls ~/.copilot/skills/aemo-brand-skill
find ~/.copilot/skills/aemo-brand-skill/assets/pictographs -name '*.svg' | wc -l   # expect 383
```

Your AI tool should then surface this skill automatically for AEMO brand/design tasks (via
`disable-model-invocation: false`) and as an explicit `/aemo-brand-skill` slash command where the
tool supports it (via `user-invocable: true`).

## How an AI agent should use this package

1. Read **[SKILL.md](./SKILL.md)** first — it is the task-oriented entry point, with a workflow
   for designing new interfaces and a separate workflow for reviewing existing ones, plus the
   required four-section output format for review findings (Violations / Risks and uncertainties
   / Recommended corrections / Confirmed compliant elements).
2. Consult **[design.md](./design.md)** for the detailed rules behind any specific decision (logo
   selection, typography, colour, tokens, pictographs). Every rule in it is cited to one of the six
   source GEL pages, or explicitly labelled as implementation guidance / a known gap.
3. Use **[tokens/colors.json](./tokens/colors.json)** or **[tokens/colors.css](./tokens/colors.css)**
   for exact colour values rather than retyping hex codes from memory.
4. Check **[references/asset-manifest.md](./references/asset-manifest.md)** before reusing any
   bundled logo or pictograph file outside its documented licence.
5. Never invent a brand rule that isn't backed by a citation in `design.md` — if something isn't
   covered, say so (see `design.md`'s "Summary of explicitly flagged gaps and conflicts").

## How developers can consume the token files

- **CSS:** `@import` or `<link>` [tokens/colors.css](./tokens/colors.css) and reference its custom
  properties, e.g. `color: var(--gel-color-primary-purple-500);` (this is the exact pattern shown
  on AEMO's own design-tokens page).
- **JSON:** import [tokens/colors.json](./tokens/colors.json) in any build tooling, design-token
  pipeline (e.g. Style Dictionary), or component library that consumes JSON token sources. The
  file separates `designTokens` (official AEMO tokens, with their real SCSS variable names) from
  `brandPalette` (named brand colours from the branding page, with package-local CSS alias names
  under `cssVariable` — these aliases are **not** official AEMO tokens; see `design.md` → "Token
  naming and aliases").
- Both files are kept in exact agreement — every hex value in `colors.css` matches the
  corresponding value in `colors.json` (see Validation below).

## Which assets are bundled vs. externally referenced

| Asset | Bundled in this package? | Why |
|---|---|---|
| Logo PNGs (`assets/logos/`) | ✅ Yes, all 8 files | GEL explicitly labels this ZIP download "Public Use"; files were verified byte-identical to the official download. |
| Pictograph SVGs (`assets/pictographs/`) | ✅ Yes, all 383 files, under a **restricted-use notice** | GEL states the library is copyright-protected and "intended solely for use within AEMO's projects and services" — not a public licence. See [references/asset-manifest.md](./references/asset-manifest.md) and [assets/pictographs/NOTICE.md](./assets/pictographs/NOTICE.md) before reusing or redistributing. **If you fork or publish this package outside an AEMO context, remove `assets/pictographs/` first.** |
| Figtree font files | ❌ No — link only | Figtree is freely available via Google Fonts (`https://fonts.google.com/specimen/Figtree`); load or self-host it from there instead of bundling binaries. See `design.md` → Typography → "Web-loading guidance." |
| Arial Nova font files | ❌ No — name only | System/Microsoft-licensed fallback; referenced only as a CSS `font-family` name. |

## How and when to revalidate the source material

This package was built from a snapshot of the six GEL pages accessed on **2026-10-15** (each
page's own "Last updated" footer read **9 Oct 2026** at that time — see
[references/sources.md](./references/sources.md)). AEMO's GEL site can change at any time.
Re-validate before relying on this package if:

- It has been more than a few months since the access date above.
- A task specifically requires guaranteed currency (e.g. a formal brand-compliance sign-off).
- Something in this package appears to contradict what you observe on the live site.

To revalidate: re-fetch each of the six URLs in [references/sources.md](./references/sources.md)
(use a real browser render, not just a raw HTTP GET — the GEL site is a client-rendered Docusaurus
app and several key tables, including the full design-tokens table, only appear after
hydration), diff the content against `design.md`, and update both the document and the token files
together so they stay in agreement.

## Known gaps and unresolved questions

See `design.md` → **"Summary of explicitly flagged gaps and conflicts"** for the full list,
including:
- No published clear-space or minimum-size rule for the logo.
- A "black" logo variant is described in text but not present in the public download.
- No published numeric type scale for Figtree.
- A hex-value conflict between the branding page's "Purple Primary" (`#6B3077`) and the design
  token `Purple 500` (`#6c3078`) — both preserved, design-token value recommended for new
  implementation.
- The branding page's "Blue Grey" (`#F3F7F9`) has no matching design token.
- No published dark-mode or interaction-state (hover/focus/disabled) colour guidance.
- No published pictograph sizing/placement rules.

Also see [references/sources.md](./references/sources.md) for pages that were linked from the
required sources but intentionally left out of scope (e.g. the Colour Contrast Checker,
Typography in Software Development, Fuel Types, and Iconography guides), and for the non-use of a
local, non-authoritative `AEMO_BrandGuidelines.pdf` found during research.

## Licensing summary

- **Logos:** official public-use files — reusable as-is, not editable/recolourable/distortable.
- **Pictographs:** AEMO-copyrighted, restricted to AEMO's own projects and services — do not
  redistribute outside that context.
- **Figtree / Arial Nova:** not bundled; load Figtree from Google Fonts, reference Arial Nova as a
  system fallback name only.

See [references/asset-manifest.md](./references/asset-manifest.md) for full detail.
