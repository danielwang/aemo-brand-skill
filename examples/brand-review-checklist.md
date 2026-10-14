# AEMO Brand Review Checklist

A practical checklist for reviewing a website, component, mock-up, or AI-generated design against
AEMO's brand and visual system. Each item cites the `design.md` section (and underlying GEL page)
it comes from. Use `[ ]` / `[x]` / `[⚠]` as you go (`⚠` = can't verify — rule not specified in
source, or evidence insufficient).

Record results under the four headings from `SKILL.md` → **Required review-output format**
(Violations / Risks and uncertainties / Recommended corrections / Confirmed compliant elements) —
this file is the checklist you work through to populate that structure, not a replacement for it.

---

## 1. Logo
*(design.md → Logo; source: https://gel.aemo.com.au/docs/branding/logo)*

- [ ] A logo file matching one of the 8 official variants in `assets/logos/` is used (not a
      recreated/approximated version).
- [ ] Purple (colour) or black logo appears **only on a white background**.
- [ ] White (reverse) logo appears **only on a solid brand-colour background** — never on a
      pattern or photograph.
- [ ] Logo is not stretched, skewed, or otherwise distorted (aspect ratio preserved).
- [ ] Logo is not recoloured to a non-official colour.
- [ ] Logo is not cropped, recomposed, or has elements (e.g. the swoosh) used in isolation as a
      generic icon.
- [ ] Primary vs. Secondary variant choice is appropriate for the size/legibility context
      (Secondary/simplified for small sizes, screenprint, embroidery).
- [⚠] Clear space / minimum size — **no rule published**; do not fail or pass against this, flag
      as unverifiable if asked.

## 2. Typography
*(design.md → Typography; source: https://gel.aemo.com.au/docs/branding/typeface)*

- [ ] Figtree is used for body text and headings (or Arial Nova where Figtree cannot be embedded,
      e.g. HTML email / Office templates / PowerPoint).
- [ ] Only documented weights appear: Light 300, Regular 400, Heavy 650, Extra Bold 800.
- [ ] Headings use Extra Bold; body copy uses Regular; Light/Heavy limited to captions, tables, or
      diagram emphasis.
- [ ] Title case or sentence case is used generally.
- [ ] ALL CAPS is limited to charts, labels, and UI navigation (not used for body copy or long
      headings).
- [ ] No outlines, drop shadows, or other text effects are applied to type.
- [⚠] Numeric type scale (sizes/line-heights) — **no scale published**; do not treat any specific
      scale as an AEMO requirement.

## 3. Colour
*(design.md → Colour / Design tokens; sources:
https://gel.aemo.com.au/docs/branding/colours/colour-palette and
https://gel.aemo.com.au/docs/guides/design-tokens/color)*

- [ ] Purple (Hero / Purple 500 family) reads as the dominant/first-choice brand colour.
- [ ] Accent/"Pop" colours (Purple Pop, Teal Pop, Orange Pop, Yellow Pop, Green Pop) are used for
      highlights/flourishes in small doses, not large background fields.
- [ ] Any Fuel-family colour present is used for genuine fuel/technology-type data encoding
      (charts/diagrams), not generic decoration.
- [ ] Observed hex/RGB values match an official token (`tokens/colors.json` /
      `tokens/colors.css`) or a documented brand colour **exactly**. If not exact, the deviation is
      called out explicitly with both values (don't silently treat "close" as "correct" — see the
      Purple Primary `#6B3077` vs. Purple 500 `#6c3078` conflict in `design.md` as the model).
- [ ] Text/background colour combinations meet WCAG 2.1 AA contrast (4.5:1 normal text, 3:1 large
      text/UI components).
- [⚠] Dark mode / hover / focus / disabled state colours — **not specified in source**; don't
      fail an interface for lacking an AEMO-defined dark theme, since none is published.

## 4. Visual language
*(design.md → Brand principles and visual language; source:
https://gel.aemo.com.au/docs/branding/visual)*

- [ ] Layout is led primarily by white space, text, and iconography (not heavy colour fields or
      imagery as the main content carrier).
- [ ] Shadow/elevation ("depth") is used deliberately to separate key content groups, not applied
      uniformly to every element.
- [ ] Colour is used for emphasis/dynamism on top of the white-space/text/iconography structure,
      not as the primary communication channel.
- [ ] The interface feels fast, focused, and to-the-point (the "Utility" value) rather than
      decoratively heavy.

## 5. Pictographs
*(design.md → Pictographs and visual assets; source:
https://gel.aemo.com.au/docs/branding/pictographs)*

- [ ] Any pictograph used is sourced from the official library (`assets/pictographs/` /
      `references/pictograph-inventory.csv`), not a generic or third-party icon standing in for it.
- [ ] Pictographs are used unmodified (not recoloured, flipped, distorted, or recomposed).
- [ ] If a needed concept has no matching pictograph, the recommendation is to request a custom
      icon from AEMO's Communications and Corporate Affairs team — not to invent one.
- [ ] Pictographs are not being redistributed/published outside AEMO's own projects and services
      (copyright restriction — see `references/asset-manifest.md`).
- [⚠] Pictograph sizing/placement/grid rules — **not specified in source**; judge proportionality
      and consistency by ordinary design standards, not a specific AEMO numeric rule.

---

## Using this checklist

1. Walk the five sections in order, gathering concrete evidence (actual hex values, actual font
   names/weights rendered, actual logo file used, etc.) rather than impressions.
2. Mark each item `[x]` (compliant), unchecked (violation), or `[⚠]` (can't verify / no rule
   exists).
3. Transfer the results into the four-section output format from `SKILL.md`:
   - Unchecked items with a clear, sourced rule → **Violations**.
   - `[⚠]` items, near-misses, and anything relying on an unspecified/conflicting rule →
     **Risks and uncertainties**.
   - For every violation (and risk where a fix makes sense) → **Recommended corrections**.
   - `[x]` items → **Confirmed compliant elements**.
4. Cite the specific `design.md` section and GEL URL for every item you report.
