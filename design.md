# AEMO Design System Reference

This is the detailed reference behind the operational instructions in [SKILL.md](./SKILL.md).
It consolidates everything verified from the six authoritative AEMO Global Experience Language
(GEL) pages listed below, plus the asset files bundled in [assets/](./assets). Every rule here is
either:

- **"Source rule"** — stated explicitly on a GEL page (quoted or closely paraphrased, with a URL
  citation), or
- **"Implementation guidance"** — a reasonable, clearly-labelled inference needed to make a source
  rule actionable (e.g. turning "use title case" into a concrete heading example). Implementation
  guidance never invents a specific numeric value, asset name, or restriction that isn't backed by
  a source rule.

Where the source material is silent, ambiguous, or self-contradictory, this is stated explicitly
rather than filled in. See [references/sources.md](./references/sources.md) for full citation
details and every gap/conflict found during research.

**Authoritative sources (treat these as ground truth over this document if they ever diverge):**

1. Logo — https://gel.aemo.com.au/docs/branding/logo
2. Visual Identity — https://gel.aemo.com.au/docs/branding/visual
3. Typeface — https://gel.aemo.com.au/docs/branding/typeface
4. Colour Palette — https://gel.aemo.com.au/docs/branding/colours/colour-palette
5. Design Tokens — Colour — https://gel.aemo.com.au/docs/guides/design-tokens/color
6. Pictographs — https://gel.aemo.com.au/docs/branding/pictographs

---

## Brand principles and visual language

*Source: [Visual Identity](https://gel.aemo.com.au/docs/branding/visual)*

**Source rules:**
- The AEMO design language uses **colour, shape, and shadow** to draw the user's eye to key
  elements. **Accessibility and readability are key.**
- Interfaces primarily consist of three core areas that should convey the **majority** of content:
  **white space, text, and iconography**.
- **Subtle colour blocks and shadows** are used to lift content off the screen and break up the
  interface.
- **Colour** is applied on top of that structure to create extra **emphasis and dynamism**.
- Three named values drive the visual identity:
  - **Depth** — created through contrast, shading, and interaction; "conveys confidence through
    structure and creativity."
  - **Colour** — "an updated set of brighter colours... to extend AEMO's core brand visuals and
    better represent creativity and innovation."
  - **Utility** — digital assets must "load quickly, get to the point, and provide the context and
    support required to empower user[s]."

**Implementation guidance (not stated verbatim, but a direct translation of the above into design
decisions):**
- Default to generous white space and a text/iconography-led layout before reaching for colour or
  imagery; colour and shadow are an accent layer, not the primary communication channel.
- Use elevation (subtle shadow, e.g. a small blur/offset on cards or panels) sparingly to separate
  content groups, not on every element — "depth" is a deliberate structural cue, not a blanket
  style.
- Treat the brighter purple/accent palette (see Colour section below) as a tool for emphasis
  (calls to action, key data points, highlights) rather than large background fields, consistent
  with "Purple Pop" being described as a "highlight in small doses."
- Prioritise interface performance and clarity (fast load, minimal content, clear hierarchy) over
  decorative richness — this is an explicit, named value ("Utility"), not just good practice.

---

## Logo

*Source: [Logo](https://gel.aemo.com.au/docs/branding/logo)*

### Available variants

| Variant | Formats available | Use case (source rule) |
|---|---|---|
| **Primary** | Horizontal, Stacked (centred) | "Maximum flexibility" — default choice for most applications. |
| **Secondary** | Horizontal, Stacked (centred), both with wordmark/sub-line removed ("no text") | "Simplified version of the primary logo... designed to scale and function at small sizes." Use "where legibility and readability of the primary logo text at small sizes is an issue, such as on screenprinting and embroidery." |

Each variant/format combination is available in two colour treatments, giving the 8 files in
[assets/logos/](./assets/logos/):

| File | Variant | Format | Colour |
|---|---|---|---|
| `Purple AEMO logo-centred.png` | Primary | Stacked | Colour (purple, #6B3077) |
| `Purple AEMO logo-horizontal.png` | Primary | Horizontal | Colour (purple, #6B3077) |
| `Purple AEMO logo-simple-centred-no text.png` | Secondary | Stacked | Colour (purple, #6B3077) |
| `Purple AEMO logo-simple-horizontal-no text.png` | Secondary | Horizontal | Colour (purple, #6B3077) |
| `White AEMO logo-centred.png` | Primary | Stacked | Reverse (white, #FFFFFF) |
| `White AEMO logo-horizontal.png` | Primary | Horizontal | Reverse (white, #FFFFFF) |
| `White AEMO logo-simple-centred_no text.png` | Secondary | Stacked | Reverse (white, #FFFFFF) |
| `White AEMO logo_simple-horizontal_no text.png` | Secondary | Horizontal | Reverse (white, #FFFFFF) |

A **black** logo is also described on the source page but **no black-coloured file is available**
in the public asset set — see "Gap" callout below.

### Colour variations and background/contrast rules (source rules)

- **Colour logo (purple) is the preferred version** and should **always be placed on a white
  background.**
- **Black logo** — "available when black and white or grayscale designs are needed," and "should
  also only be placed on a white background." *(Rule captured for completeness; no black file is
  available in this package — see Gap below.)*
- **Reverse (white) logo** — "should only be used on solid background colours." Explicitly:
  **"Avoid using the reverse logo on patterns or photographs, as this could obstruct visibility."**

**Implementation guidance:** when choosing a background for the white/reverse logo, use one of the
solid brand colours documented in the Colour section below (the Hero/Dark Purple colours give the
strongest, most on-brand contrast) — not merely "any dark colour."

### Approved and prohibited treatments (source rule, stated as a direct warning)

> "Consistency is important – please don't edit, change, distort, recolour or reconfigure it.
> Always use the logo files provided."

This means, concretely:
- ❌ Do not stretch, skew, rotate, or change the aspect ratio.
- ❌ Do not recolour the mark (including applying a gradient, tint, or non-brand colour).
- ❌ Do not rearrange, crop, or recombine elements of the mark (e.g. separating the swoosh from the
  wordmark, or using the swoosh alone as a generic icon).
- ❌ Do not reverse-engineer/trace a new version from a raster file — always use the official
  provided files.
- ✅ Scale proportionally (lock aspect ratio) as needed.
- ✅ Choose among the provided variant/format/colour combinations (above) rather than modifying one.

### Clear space and minimum size

**Gap — not specified in source.** The current Logo page does **not** state a clear-space
(minimum surrounding padding/exclusion zone) value or a minimum-size (px/mm/pt) value for any
logo variant. Do not invent one. If a numeric clear-space or minimum-size figure is required,
obtain it from AEMO's Communications and Corporate Affairs team or the SharePoint brand portal
linked from the GEL site, and update this document with its citation once confirmed. (A
non-authoritative, possibly outdated local PDF was found during research that does contain such
sections, but per the task's sourcing rules it was not used — see
[references/sources.md](./references/sources.md).)

**Implementation guidance in the absence of a stated value:** apply a conservative, proportionate
clear space around the logo (e.g. padding roughly equal to the cap-height of the "A" in "AEMO")
and never let the logo touch an edge, text, or another graphic element. Treat this as a sensible
default only, not a brand rule — do not present it as an official AEMO figure in review findings.

### Background and contrast considerations

- White background → use the **Purple colour logo** (preferred) or, for grayscale contexts, the
  **black logo** (not bundled — see Gap).
- Solid brand-colour background → use the **White/reverse logo**.
- Patterned or photographic background → **do not place any logo variant directly on it**; use a
  solid colour panel/plate behind the logo instead (derived directly from the "avoid... patterns
  or photographs" rule).

### File-selection guidance

1. Pick **Primary vs Secondary** based on size/legibility: use Secondary (no wordmark sub-line)
   when the primary logo's text would be illegible at the target size (source rule — e.g. small
   icons, favicons, app icons, embroidery/screenprint).
2. Pick **Horizontal vs Stacked** based on the available aspect ratio of the placement (e.g.
   horizontal navigation bars vs. square social avatars or centred splash screens).
3. Pick **Colour vs Reverse** based on the background, per the rules above.
4. Always use the PNG as supplied (transparent background, correct aspect ratio) — do not
   re-export, re-compress, or convert formats unless necessary for a technical constraint, and even
   then preserve the artwork unchanged.

### Source references

All rules above are from https://gel.aemo.com.au/docs/branding/logo unless marked "Implementation
guidance" or "Gap."

---

## Typography

*Source: [Typeface](https://gel.aemo.com.au/docs/branding/typeface)*

### Typeface families and fallbacks

| Role | Typeface | Notes (source rule) |
|---|---|---|
| Primary (all body copy and headings) | **Figtree** | "A modern, geometric sans-serif chosen for excellent readability and clear visual hierarchy." |
| Fallback (when Figtree can't be embedded/loaded) | **Arial Nova** | "Can be used for both headings and body text as a reliable fallback when Figtree is unavailable." Stated use cases: HTML emails, internal Microsoft Office templates, PowerPoint/digital presentations that cannot embed fonts; "available on both PC and Mac platforms." |

### Supported weights and styles (source rule)

Figtree "comes in four weights: **Light (300), Regular (400), Heavy (650), and Extra Bold (800)**."

### Intended roles and hierarchy (source rule)

- **Regular (400):** Body text.
- **Extra Bold (800):** Headings.
- **Light and Heavy:** "Emphasis in captions, tables, and diagrams."
- **Casing:** "Prefer title and sentence case. Use all caps only for charts, labels, and UI
  navigation."
- **Effects:** "Avoid outlines, shadows, or other effects" on type.

No italic style is documented as part of the brand weight set; the source page's interactive type
explorer exposes an "Italic" toggle, but no written rule states when/whether italics should be
used in production UI — treat italics as **undocumented/use with caution**, not a confirmed brand
style.

### Web-loading / font-face guidance

- **Source rule:** Figtree should be obtained via **Google Fonts**:
  `https://fonts.google.com/specimen/Figtree`.
- **Implementation guidance** (standard, non-brand-specific web practice, provided because the
  source page does not give literal `@font-face`/`<link>` code): load Figtree either by linking the
  Google Fonts stylesheet,
  ```html
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Figtree:wght@300;400;650;800&display=swap" rel="stylesheet">
  ```
  or by self-hosting the font files obtained from Google Fonts and declaring `@font-face` rules for
  the four weights (300/400/650/800). Set a CSS fallback stack ending in the documented fallback,
  e.g. `font-family: "Figtree", "Arial Nova", Arial, sans-serif;`.

### Licensing / redistribution restrictions

Figtree is distributed via Google Fonts, which publishes fonts under an open licence (typically
the SIL Open Font License) allowing free use, embedding, and self-hosting. **This package does not
bundle any font binary files** — load Figtree from Google Fonts or self-host a copy you obtain
directly from Google Fonts, per the Typography page's own download link. Arial Nova is a
Microsoft/system-licensed font; reference it only as a CSS fallback **name** (do not bundle or
redistribute the font file itself).

### Type scale

**Not specified in source.** The Typeface page does not publish a numeric type scale (font sizes,
line heights, or heading levels mapped to pixel/rem values). **No type scale is invented here.**
If a concrete scale is needed for implementation, treat it as a project-level decision made
independently of brand guidance, and flag any claim that a specific scale is "AEMO brand-mandated"
as unsupported during a compliance review.

### Source references

All rules above are from https://gel.aemo.com.au/docs/branding/typeface unless marked
"Implementation guidance" or "Not specified in source."

---

## Colour

*Sources: [Colour Palette](https://gel.aemo.com.au/docs/branding/colours/colour-palette) and
[Design Tokens — Colour](https://gel.aemo.com.au/docs/guides/design-tokens/color)*

AEMO publishes colour in **two related but distinct documents**:
1. The **branding Colour Palette** page — a small, named set of "brand" colours grouped as Hero,
   Secondary, and Extension, each with a short usage description, aimed at brand/marketing use.
2. The **Design Tokens** page — a larger, implementation-oriented set of named tokens with
   official **SCSS variable names** (and equivalent CSS custom properties, Less, JS, XML, Swift
   forms), grouped as Primary, Secondary, Tertiary, and Fuel.

Per the task's instruction, **where the two disagree, the design-tokens values are preferred for
implementation**, and the disagreement is documented rather than silently resolved (see "Known
conflicts" below). Machine-readable versions of every value below are in
[tokens/colors.json](./tokens/colors.json) and [tokens/colors.css](./tokens/colors.css).

### Brand roles (from the Colour Palette page — source rules)

| Group | Name | Hex | Role / usage description (verbatim) |
|---|---|---|---|
| Hero | Purple Primary | `#6B3077` | "Core primary colour - first choice for design" |
| Hero | Dark Purple | `#3C1053` | "Foundation block behind other colour elements" |
| Hero | Purple Pop | `#B056BC` | "Highlight in small doses to draw attention" |
| Secondary | Rose Red | `#A82140` | "Secondary palette accent" |
| Secondary | Blue Violet | `#777DA7` | "Secondary palette accent" |
| Secondary | Blue Sky | `#ADE0EE` | "Secondary palette accent" |
| Secondary | Blue Grey | `#F3F7F9` | "Secondary palette neutral" |
| Extension | Teal Pop | `#34B9B3` | "Pop of colour flourish" |
| Extension | Orange Pop | `#FE5F55` | "Pop of colour flourish" |
| Extension | Yellow Pop | `#FFD565` | "Pop of colour flourish" |
| Extension | Green Pop | `#A1D978` | "Pop of colour flourish" |

The page's lead-in text (source rule) frames the purple family as the brand's identity: *"The core
primary colour of the digital brand is purple... These purple hero colours are regularly paired
with the secondary palette to provide some variance in official applications of the brand... It is
this set of colours that should be recognised as the AEMO brand colours."*

**Implementation guidance:** treat Hero Purple Primary as the default dominant brand colour for
headers/key UI chrome; Dark Purple as a background/foundation colour sitting *behind* other colour
elements (not as a text/accent colour); Purple Pop, and the Extension "Pop" colours generally, as
small-area highlights/accents (buttons, badges, chart highlights) rather than large fills, per
their own "pop"/"highlight in small doses"/"flourish" descriptions; Blue Grey as a neutral
background/surface tone, consistent with it being the one colour explicitly labelled "neutral."

### Primitive design tokens (from the Design Tokens page — source rules, exact values)

These are the official tokens, each with its own SCSS variable name (`$gel-color-...`) and CSS
custom property (`--gel-color-...`, shown on the source page's own "CSS Variables" code sample).
Full machine-readable data: [tokens/colors.json](./tokens/colors.json) /
[tokens/colors.css](./tokens/colors.css).

**Primary (Purple scale, 100–800):**

| Name | Hex | SCSS variable |
|---|---|---|
| Purple 800 | `#281631` | `$gel-color-primary-purple-800` |
| Purple 700 | `#3c1053` | `$gel-color-primary-purple-700` |
| Purple 600 | `#502252` | `$gel-color-primary-purple-600` |
| Purple 500 | `#6c3078` | `$gel-color-primary-purple-500` |
| Purple 400 | `#b056bc` | `$gel-color-primary-purple-400` |
| Purple 300 | `#cc8acf` | `$gel-color-primary-purple-300` |
| Purple 200 | `#e8cbea` | `$gel-color-primary-purple-200` |
| Purple 100 | `#ede9ed` | `$gel-color-primary-purple-100` |

**Secondary (Blue, Green, Orange, Red, Denim, Teal, Yellow, Aqua, Violet):**

| Name | Hex | SCSS variable |
|---|---|---|
| Blue 500 | `#5666bc` | `$gel-color-secondary-blue-500` |
| Blue 300 | `#7384d2` | `$gel-color-secondary-blue-300` |
| Blue 200 | `#a0abd9` | `$gel-color-secondary-blue-200` |
| Blue 100 | `#f4fbfc` | `$gel-color-secondary-blue-100` |
| Green 500 | `#467822` | `$gel-color-secondary-green-500` |
| Green 300 | `#5d9f2d` | `$gel-color-secondary-green-300` |
| Green 200 | `#93be74` | `$gel-color-secondary-green-200` |
| Green 100 | `#ecf7e3` | `$gel-color-secondary-green-100` |
| Orange 500 | `#d97008` | `$gel-color-secondary-orange-500` |
| Orange 300 | `#f9b067` | `$gel-color-secondary-orange-300` |
| Orange 200 | `#fee2bf` | `$gel-color-secondary-orange-200` |
| Orange 100 | `#fff4ec` | `$gel-color-secondary-orange-100` |
| Red 500 | `#d4254e` | `$gel-color-secondary-red-500` |
| Red 300 | `#dd4e70` | `$gel-color-secondary-red-300` |
| Red 200 | `#e77892` | `$gel-color-secondary-red-200` |
| Red 100 | `#feefef` | `$gel-color-secondary-red-100` |
| Denim - 500 | `#3379bf` | `$gel-color-tertiary-denim-500` *(sic — "Denim" is under the Secondary heading on-page, but its own SCSS variable namespace is `tertiary`; reproduced exactly as published)* |
| Denim - 300 | `#5493d1` | `$gel-color-tertiary-denim-300` |
| Teal | `#34b9b3` | `$gel-color-secondary-teal` |
| Yellow | `#ffd565` | `$gel-color-secondary-yellow` |
| Aqua | `#85cee2` | `$gel-color-secondary-aqua` |
| Violet - 900 | `#282b3e` | `$gel-color-secondary-violet-900` |
| Violet - 500 | `#777da7` | `$gel-color-secondary-violet-500` |

**Tertiary (Black, White, Slate scale 50–1100):**

| Name | Hex | SCSS variable |
|---|---|---|
| Black | `#000000` | `$gel-color-tertiary-black` |
| White | `#ffffff` | `$gel-color-tertiary-white` |
| Slate 1100 | `#121417` | `$gel-color-tertiary-slate-1100` |
| Slate 1000 | `#1d2026` | `$gel-color-tertiary-slate-1000` |
| Slate 900 | `#282c34` | `$gel-color-tertiary-slate-900` |
| Slate 800 | `#333842` | `$gel-color-tertiary-slate-800` |
| Slate 700 | `#434b58` | `$gel-color-tertiary-slate-700` |
| Slate 600 | `#545d6e` | `$gel-color-tertiary-slate-600` |
| Slate 500 | `#6b778c` | `$gel-color-tertiary-slate-500` |
| Slate 400 | `#9ea6b5` | `$gel-color-tertiary-slate-400` |
| Slate 300 | `#d2d6dd` | `$gel-color-tertiary-slate-300` |
| Slate 200 | `#dcdfe4` | `$gel-color-tertiary-slate-200` |
| Slate 100 | `#f1f2f3` | `$gel-color-tertiary-slate-100` |
| Slate 50 | `#fafafa` | `$gel-color-tertiary-slate-50` |

**Fuel (semantic — generation/technology types; also doubles as a chart/diagram palette):**

| Name | Hex | SCSS variable |
|---|---|---|
| Coal | `#333536` | `$gel-color-fuel-coal` |
| Brown Coal | `#97785c` | `$gel-color-fuel-brown-coal` |
| Distilate | `#fe5f55` | `$gel-color-fuel-distilate` *(sic — spelling as published)* |
| Biomass | `#a82140` | `$gel-color-fuel-biomass` |
| Solar | `#ffd565` | `$gel-color-fuel-solar` |
| Wind | `#a1d978` | `$gel-color-fuel-wind` |
| Hydro | `#ade0ee` | `$gel-color-fuel-hydro` |
| Renewables | `#e1ee8e` | `$gel-color-fuel-renewables` |
| DemandSide | `#5666bc` | `$gel-color-fuel-demandSide` |
| Landfill Gas | `#5cdcd6` | `$gel-color-fuel-landfill-gas` |
| SatPvOrSolarThermal | `#ffb546` | `$gel-color-fuel-sat-pv-or-solar-thermal` |
| Battery | `#b056bc` | `$gel-color-fuel-battery` |
| Battery Load | `#d77ee2` | `$gel-color-fuel-battery-load` |
| Vpp Battery Load | `#e2a8ea` | `$gel-color-fuel-vpp-battery-load` |
| Main | `#333536` | `$gel-color-fuel-main` |
| Load | `#d4dadd` | `$gel-color-fuel-load` |

### Brand-to-token mapping (cross-referenced during research)

| Brand colour (Colour Palette page) | Hex | Matching design token | Match? |
|---|---|---|---|
| Purple Primary | `#6B3077` | Purple 500 `#6c3078` | **Conflict — close but not identical** (see below) |
| Dark Purple | `#3C1053` | Purple 700 `#3c1053` | ✅ Exact |
| Purple Pop | `#B056BC` | Purple 400 `#b056bc` (also = Fuel Battery `#b056bc`) | ✅ Exact |
| Rose Red | `#A82140` | Fuel Biomass `#a82140` | ✅ Exact (no "secondary red" token matches; Secondary Red 500 is a different value, `#d4254e`) |
| Blue Violet | `#777DA7` | Secondary Violet 500 `#777da7` | ✅ Exact |
| Blue Sky | `#ADE0EE` | Fuel Hydro `#ade0ee` | ✅ Exact |
| Blue Grey | `#F3F7F9` | *(none found)* | **Gap — no exact token match** |
| Teal Pop | `#34B9B3` | Secondary Teal `#34b9b3` | ✅ Exact |
| Orange Pop | `#FE5F55` | Fuel Distilate `#fe5f55` | ✅ Exact |
| Yellow Pop | `#FFD565` | Secondary Yellow `#ffd565` / Fuel Solar `#ffd565` | ✅ Exact |
| Green Pop | `#A1D978` | Fuel Wind `#a1d978` | ✅ Exact |

### Known conflicts (documented, not resolved)

1. **Purple Primary vs. Purple 500.** The Colour Palette page gives the brand's "first choice for
   design" colour as `#6B3077`. The Design Tokens page's `$gel-color-primary-purple-500` is
   `#6c3078` — visually almost indistinguishable but not the same hex value. **Empirical evidence
   from the bundled logo assets:** pixel-sampling the official logo PNGs (`assets/logos/Purple
   AEMO logo-centred.png`, etc.) shows the AEMO logo artwork itself uses `#6B3077` exactly, not
   `#6c3078`. Per the task's conflict-resolution rule, **the design-token value
   (`$gel-color-primary-purple-500` / `#6c3078`) should be preferred for new UI implementation**
   (buttons, backgrounds, component colours), while `#6B3077` should be used when **exact parity
   with the logo or brand-palette swatch** is required (e.g. a colour picked to precisely match
   the logo in a co-branded document). Both values are preserved, separately named, in the token
   files — neither silently overwrote the other.
2. **Blue Grey has no token.** `#F3F7F9` ("Secondary palette neutral") does not exactly match any
   published design token. The closest are Blue 100 (`#f4fbfc`) and Slate 50 (`#fafafa`) — both
   different. Do not treat any token as an authoritative substitute for Blue Grey; use the literal
   `#F3F7F9` value (available as `--gel-brand-blue-grey` in the token files) if the Blue Grey brand
   colour specifically is required, and note in review output that it has no corresponding design
   token.

### Token naming and aliases

- Official token names (`$gel-color-...` / `--gel-color-...`) are reproduced **exactly** as
  published — nothing renamed or normalised.
- The named Hero/Secondary/Extension brand colours (e.g. "Purple Primary," "Blue Grey") have **no
  official SCSS/CSS variable published** on the Colour Palette page. For convenience in
  [tokens/colors.css](./tokens/colors.css), this package defines **package-local aliases** in the
  form `--gel-brand-<kebab-case-name>` (e.g. `--gel-brand-purple-primary`,
  `--gel-brand-blue-grey`). These are **not** official AEMO tokens — do not present them as such in
  generated code comments or review output; always describe them as "brand palette value" rather
  than "design token."

### Usage restrictions and recommended combinations

- **Source rule:** Hero (purple) colours are "regularly paired with the secondary palette to
  provide some variance in official applications of the brand."
- **Source rule:** Purple Pop and the Extension "Pop" colours are for highlights/flourishes "in
  small doses," not large fills.
- **Fuel tokens are semantic** — they denote a specific energy/generation type (coal, solar, wind,
  battery, etc.) in charts and diagrams. **Implementation guidance:** do not repurpose a Fuel token
  for unrelated UI decoration merely because its hex value is convenient (e.g. don't use
  `$gel-color-fuel-battery` as a generic "purple highlight" just because it equals Purple 400) —
  keep semantic fuel colours reserved for fuel/technology-type encoding in data visualisations.

### Light/dark and interaction-state guidance

**Not specified in source.** Neither colour page documents light/dark theme behaviour, hover/
focus/active/disabled state colours, or any interaction-state palette. Do not invent
dark-mode or state-colour mappings and present them as AEMO brand rules.

### Accessibility considerations

**Source rule:** the Colour Palette page links to the **"AEMO Colour Contrast Checker"**
(`/docs/guides/accessibility/accessible-colours`). This confirms AEMO maintains a dedicated
contrast-checking tool/guidance, but that page is outside this task's required source list and was
not fetched or incorporated here (see [references/sources.md](./references/sources.md)).
**Implementation guidance:** regardless of brand colour choice, verify text/background colour
pairs meet **WCAG 2.1 AA** contrast ratios (4.5:1 for normal text, 3:1 for large text/UI
components) before shipping — this is standard accessibility practice, not an AEMO-specific rule,
and is called out because the Visual Identity page itself states "accessibility and readability are
key to the AEMO design language."

---

## Design tokens

*Source: [Design Tokens — Colour](https://gel.aemo.com.au/docs/guides/design-tokens/color)*

### Primitive vs. semantic tokens

The source page does not use the words "primitive" or "semantic," but its structure maps cleanly
onto that distinction:
- **Primitive-like groups:** Primary (Purple scale), Secondary (Blue/Green/Orange/Red/Denim/Teal/
  Yellow/Aqua/Violet), Tertiary (Black/White/Slate scale) — numbered colour ramps with no
  domain-specific meaning attached.
- **Semantic group:** Fuel — each token name (`coal`, `solar`, `battery`, `load`, etc.) denotes a
  specific real-world meaning (an energy source or grid concept), not just a position on a ramp.

### Usage examples (source rule — reproduced from the page's own "Code" section)

```css
/* CSS custom property */
.class_name {
  color: var(--gel-color-primary-purple-500);
}
```
```scss
// Sass
.class_name {
  color: $gel-color-primary-purple-500;
}
```
```less
// Less
.class_name {
  color: @gel-color-primary-purple-500;
}
```
```js
// JavaScript
document.getElementById(id).style.color = token.ColorPrimaryPurple500;
```
```xml
<!-- Android XML -->
<item android:color="@color/gel_color_primary_purple_500" />
```
```swift
// Swift
tokens.gelColorPrimaryPurple500
```

### Aliases, modes, states, deprecated values

**Not specified in source.** The page shows no dark-mode token set, no deprecated/legacy token
list, and no interaction-state tokens (hover/focus/disabled). Only the base token table and the
six code-syntax examples above are published. Do not describe any token as "deprecated" or
"dark-mode" without a source citation.

### Machine-readable equivalents

See [tokens/colors.json](./tokens/colors.json) (plain JSON, `designTokens` + `brandPalette`
sections, with a `$meta.knownConflicts` block) and [tokens/colors.css](./tokens/colors.css) (CSS
custom properties, generated from the JSON so the two never drift apart).

---

## Pictographs and visual assets

*Source: [Pictographs](https://gel.aemo.com.au/docs/branding/pictographs)*

### Available pictographs and categories

**Source rule:** "A library of pictographs has been curated for AEMO... carefully created to sit
cohesively alongside other brand elements and forms the basis of many of the brand's graphic
illustrations and elements." The live gallery (and the bundled files in
[assets/pictographs/](./assets/pictographs/)) is organised into four categories:

| Category | File count (bundled) |
|---|---|
| Business finance | 130 |
| Energy fuel technology | 127 |
| Maps, climate, landscape, transport | 41 |
| People and consumers | 85 |

Full per-file listing: [references/pictograph-inventory.csv](./references/pictograph-inventory.csv).

### Intended use (source rule)

"Pictograph[s] can be used to represent abstract concepts or physical objects. Paired with type,
pictographs can help tell many different stories and add visual interest to reports, documents and
presentations."

### Sizing, colour, placement, and modification rules

- **Colour (observed in the artwork, cross-checked against tokens):** the bundled SVGs
  predominantly use two purple tones — `#6c3078` (381 occurrences across the set; this is an
  **exact match for `$gel-color-primary-purple-500`**) and `#a4519b` (550 occurrences; **no
  matching published token or brand colour** — treat as an as-shipped artwork colour, not a
  colour to deliberately reuse elsewhere in a UI unless you confirm it against the live library).
  **Implementation guidance:** when placing pictographs in an interface, keep them in this
  purple-on-transparent treatment rather than recolouring them (see Modification rule below);
  if a monochrome/single-colour treatment is needed, `$gel-color-primary-purple-500` is the
  closest officially-tokenised match to the dominant artwork colour.
- **Sizing and placement:** **Not specified in source.** No minimum/maximum size, grid, or
  placement rule is published for pictographs. Do not invent one; size pictographs
  proportionally and consistently within a single layout based on ordinary UI judgement, and say
  so plainly ("no sizing rule found in source") in any review output rather than asserting a
  specific pixel value as a brand requirement.
- **Modification:** no explicit "don't edit" warning is written on the Pictographs page the way
  there is on the Logo page, but the copyright disclaimer (below) functions as a hard restriction
  on reproduction/distribution/modification generally. **Treat pictographs as fixed artwork — do
  not recolour, flip, distort, or recompose them** — both because no source rule authorises
  modification and because the copyright disclaimer prohibits unauthorised modification outright.

### Selection guidance

Choose a pictograph from the category matching the concept being illustrated (Business finance /
Energy fuel technology / Maps, climate, landscape, transport / People and consumers); browse
[references/pictograph-inventory.csv](./references/pictograph-inventory.csv) or the
`assets/pictographs/<category>/` folders for an appropriately literal or metaphorical match. If no
suitable pictograph exists in the library, the source rule is explicit: **"contact the
Communications and Corporate Affairs team to inquire about creating custom icons"** — do not
fabricate a new "AEMO-style" icon yourself and present it as an official pictograph.

### Misuse to avoid

- ❌ Do not treat pictographs as a free/open icon set — they are copyright-restricted (see below).
- ❌ Do not recolour pictographs to match an arbitrary UI theme; if colour must change, confirm
  against the live GEL gallery first, since no recolouring rule is published either way and the
  safest default is "leave as shipped."
- ❌ Do not mix pictograph style with unrelated third-party icon sets in the same UI region in a
  way that breaks visual cohesion — the source rule explicitly states they are "created to sit
  cohesively alongside other brand elements."
- ❌ Do not request/invent a pictograph that doesn't exist in the library instead of asking AEMO's
  Communications and Corporate Affairs team for a custom one.

### Licensing (critical — read before reuse)

> "This pictograph library provided by AEMO is protected by copyright law and is intended solely
> for use within AEMO's projects and services. Unauthorized reproduction, distribution, or
> modification of these icons is strictly prohibited."

See [references/asset-manifest.md](./references/asset-manifest.md) for the full licensing
discussion and why these files are nonetheless bundled in this particular package (an AEMO
project/service artifact) rather than withheld.

---

## Compliance checklist

A condensed, tagged version of this checklist (for use during an actual review) is in
[examples/brand-review-checklist.md](./examples/brand-review-checklist.md). This longer version
groups every checkable rule by section and cites its source.

**Logo**
- [ ] Only the provided files in `assets/logos/` are used — no edited/distorted/recoloured/
  reconfigured version appears. *(Logo page)*
- [ ] Colour (purple) or black logo only appears on a **white background**. *(Logo page)*
- [ ] Reverse (white) logo only appears on a **solid brand colour** background — never on a
  pattern or photograph. *(Logo page)*
- [ ] Primary vs Secondary logo choice matches legibility needs at the size used. *(Logo page)*
- [ ] Logo aspect ratio is preserved (not stretched/skewed). *(Logo page — "don't distort")*
- [ ] *(No clear-space/minimum-size rule exists in source to check against — flag as "not
  verifiable from source" rather than pass/fail if asked.)*

**Typography**
- [ ] Figtree is the primary typeface for body and headings (or Arial Nova where Figtree can't be
  embedded). *(Typeface page)*
- [ ] Only the four documented weights are used: Light 300 / Regular 400 / Heavy 650 / Extra Bold
  800. *(Typeface page)*
- [ ] Headings use Extra Bold; body text uses Regular; Light/Heavy reserved for captions/tables/
  diagrams emphasis. *(Typeface page)*
- [ ] Title or sentence case used generally; ALL CAPS limited to charts, labels, and UI
  navigation. *(Typeface page)*
- [ ] No text outlines, drop shadows, or similar text effects. *(Typeface page)*

**Colour**
- [ ] Purple (Hero / Purple 500 family) is the dominant/first-choice brand colour. *(Colour
  Palette page)*
- [ ] Accent/"Pop" colours are used sparingly for highlights, not as large fills. *(Colour Palette
  page)*
- [ ] Fuel-family tokens, if present, are used only for genuine fuel/technology-type encoding in
  charts, not generic decoration. *(Design Tokens page, implementation guidance)*
- [ ] Any hex values used match an official token or documented brand colour exactly, or the
  mismatch is explicitly called out (see Known conflicts). *(Design Tokens + Colour Palette
  pages)*
- [ ] Text/background colour pairs meet WCAG 2.1 AA contrast. *(Visual Identity page: "accessibility
  and readability are key"; implementation guidance for the numeric threshold)*

**Visual language**
- [ ] Layout is led by white space, text, and iconography rather than heavy colour fields or
  imagery. *(Visual Identity page)*
- [ ] Depth (shadow/elevation) is used deliberately to separate key content, not applied
  uniformly everywhere. *(Visual Identity page)*
- [ ] The interface is fast, focused, and to-the-point (Utility value). *(Visual Identity page)*

**Pictographs**
- [ ] Any pictograph used comes from the official library (`assets/pictographs/` /
  `references/pictograph-inventory.csv`) rather than a generic/third-party icon set standing in
  for it. *(Pictographs page)*
- [ ] Pictographs are unmodified (not recoloured/distorted/recomposed). *(Pictographs page —
  copyright disclaimer)*
- [ ] Pictographs are not redistributed outside AEMO's own projects/services. *(Pictographs page —
  copyright disclaimer)*

---

## Summary of explicitly flagged gaps and conflicts

For quick reference, every place this document could not state a confident, single answer:

1. Logo clear-space requirement — **not specified in source**.
2. Logo minimum-size requirement — **not specified in source**.
3. Black logo file — **described in source text but not present** in the public asset download.
4. Figtree numeric type scale (sizes/line-heights) — **not specified in source**.
5. Italic style usage policy — **not specified in source** (only an interactive toggle exists).
6. Purple Primary (`#6B3077`) vs. Purple 500 token (`#6c3078`) — **conflicting values**, both
   preserved and documented, design-token value preferred for new implementation.
7. Blue Grey (`#F3F7F9`) — **no matching design token found**.
8. Light/dark mode and interaction-state (hover/focus/disabled) colour tokens — **not specified in
   source**.
9. Pictograph sizing/placement/grid rules — **not specified in source**.
10. Pictograph recolouring policy — **not explicitly stated either way**; treated conservatively
    as "do not recolour" given the copyright restriction.
